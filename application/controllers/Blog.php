<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

	/**
	 * data variable Default value sent to views
	 *
	 * @var array
	 */
	private $data = [];

	/**
	 * sendEmail variable should we send an email on form submission
	 *
	 * @var boolean
	 */
	private $sendEmail = FALSE;

	private $test = TRUE;

	/**
	 * Config variable Form validation rules
	 *
	 * @var array
	 */
	private $validation = array(
		array(
			'field' => 'name',
			'label' => 'Nom',
			'rules' => 'required',
			'errors' => array(
					'required' => 'You must provide a %s.',
			)
		),
		array(
				'field' => 'email',
				'label' => 'Email',
				'rules' => 'trim|required|valid_email'
		)
	);

	/**
	 * Config variable  Connexion Form validation rules
	 *
	 * @var array
	 */	
	private $validationConnexion = array(
		array(
			'field' => 'username',
			'label' => "Nom d'utilisateur",
			'rules' => 'required'
		), 
		array(
			'field' => 'password',
			'label' => 'Mot de passe',
			'rules' => 'required'
		)
	);

	/**
	 * __construct function
	 * set $this->data
	 */
	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->data["title"] = "Blog";
	}

	/**
	 * view function
	 *
	 * A simply wrapper for $this->load->view()
	 * 
	 * @param string $view URL to the view file
	 * @param array $data data sent to rendering
	 * @return void
	 */
	private function render($view, $data = [])
	{
		$data = empty($data)?$this->data:$data;
		$this->load->view($view, $data);
	}

	/**
	 * Index function
	 * 
	 * Default page of this blog
	 *
	 * @return void
	 */
	public function index()
	{
		$data["title"] = "Accueil";
		$this->setData($data);

		$this->render('elements/header');
		$this->render('elements/menu');
		$this->render('blog/index');
		$this->render('elements/footer');
	}

	/**
	 * Articles function
	 * 
	 * Listing aticles with pagination(@todo)
	 *
	 * @return void
	 */
	public function articles($start = 1)
	{
		$this->load->model('articles');
		$results = $this->articles->findAll($start);
		$data["title"] = "Articles index";
		$data["articles"] = $results['result'];
		$data["start"] = $results['start'];
		$data["limit"] = $results['limit'];
		$data["count"] = $results['count'];
		
		$this->load->library('pagination');
		$pagination['base_url'] = site_url('articles') . DIRECTORY_SEPARATOR . 'page';
		$pagination['total_rows'] = $data["count"];
		$pagination['per_page'] = $data["limit"];
		$pagination['page_query_string'] = FALSE;
		$pagination['attributes'] = array('class' => 'page-link');

		$pagination['full_tag_open'] = '<nav aria-label="Page navigation example"><ul class="pagination">';
		$pagination['full_tag_close'] = '</ul></nav>';

		$pagination['next_tag_open'] = '<li class="page-item">';
		$pagination['next_tag_close'] = '</li>';
		
		$pagination['prev_link'] = '&lt;';
		
		$pagination['prev_tag_open'] = '<li class="page-item">';
		$pagination['prev_tag_close'] = '</li>';
		
		$pagination['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';
		$pagination['cur_tag_close'] = '</a></li>';
		
		$pagination['num_tag_open'] = '<li class="page-item">';
		$pagination['num_tag_close'] = '</li>';
		
		$this->pagination->initialize($pagination);


		$data["pagination"] = $this->pagination->create_links();

		$this->setData($data);
		$this->render('elements/header');
		$this->render('elements/menu');
		$this->render('blog/articles');
		$this->render('elements/footer');
	}

	/**
	 * Article function
	 * 
	 * Display an article with this slug
	 *
	 * @param string $slug
	 * @return void
	 */
	public function article($slug)
	{
		$this->load->model('articles');
		$result = $this->articles->findBySlug($slug);
		if(count($result) > 0){
		$data["article"] = (array) current($result);
		$data["title"] = $data["article"]['name'];
		
		$this->setData($data);
		$this->render('elements/header');
		$this->render('elements/menu');
		$this->render('blog/article');
		$this->render('elements/footer');
		} else {

		}
	}

	/**
	 * contact function
	 * 
	 * Display information about your company
	 *
	 * @return void
	 */
	public function contact()
	{
		$this->load->library('form_validation');

		$this->form_validation->set_rules($this->getValidation());
		
		// OR
		//$this->form_validation->set_rules('email', 'Email', 'required', array('required' => 'You must provide an %s.'));
		$this->render('elements/header');
		$this->render('elements/menu');

        if($this->form_validation->run()) {
			if($this->getSendEmail()):
				$this->load->library('email');
				
				$this->config->load('email', TRUE);
				$this->email->initialize($this->config->item('email'));
				
				$this->email->from('admin@domain.com');
				$this->email->to($this->input->post('email'), $this->input->post('name'));
				$this->email->subject("Form Submission - Mailing list inscription");
				$this->email->message("You email was added to our mailing list");
				$this->email->attach(base_url("assets/images/ci.png"), 'attachment', 'Logo.png');
				$this->email->send();
			endif;
            $this->render('blog/contact_ok');
        } else {
            $this->render('blog/contact');
        }
		$this->render('elements/footer');
	}

	/**
	 * Connexion function
	 * 
	 * Valid and connect an user
	 *
	 * @return void
	 */
	public function connexion() {
		
		if( $this->input->method() == "post" ) :
			
			$this->load->library('form_validation');
			$this->form_validation->set_rules($this->getValidationConnexion());
			if($this->form_validation->run()) {
				
				$username = $this->input->post('username');
				$password = $this->input->post('password');
				$this->user->login( $username, $password);
			} else {
				// Datas not valid
			}
		endif;
		redirect('index');
	}
	
	/**
	 * Deconnexion function
	 * 
	 * Simple disconnect method thru model
	 *
	 * @return void
	 */
	function deconnexion() {
        $this->user->logout();
        redirect('index');
    }


	/**
	 * Set data variable Default value sent to views
	 *
	 * @param  array  $data  data variable Default value sent to views
	 *
	 * @return  self
	 */ 
	public function setData(array $data)
	{
		$this->data = $data;

		return $this;
	}


	/**
	 * Get config variable Form validation rules
	 *
	 * @return  array
	 */ 
	public function getValidation()
	{
		return $this->validation;
	}

	/**
	 * Set config variable Form validation rules
	 *
	 * @param  array  $validation  Config variable Form validation rules
	 *
	 * @return  self
	 */ 
	public function setValidation(array $validation)
	{
		$this->validation = $validation;

		return $this;
	}

	/**
	 * Get config variable Connexion Form validation rules
	 *
	 * @return  array
	 */ 
	public function getValidationConnexion()
	{
		return $this->validationConnexion;
	}

	/**
	 * Set config variable Form validation rules
	 *
	 * @param  array  $validationConnexion  Config variable Coneexion's Form validation rules
	 *
	 * @return  self
	 */ 
	public function setValidationConnexion(array $validationConnexion)
	{
		$this->validationConnexion = $validationConnexion;

		return $this;
	}

	/**
	 * Get sendEmail variable should we send an email on form submission
	 *
	 * @return  bool
	 */ 
	public function getSendEmail()
	{
		return $this->sendEmail;
	}

	/**
	 * Set sendEmail variable should we send an email on form submission
	 *
	 * @param  bool  $sendEmail  sendEmail variable should we send an email on form submission
	 *
	 * @return  self
	 */ 
	public function setSendEmail(bool $sendEmail)
	{
		$this->sendEmail = $sendEmail;

		return $this;
	}
}
