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
	 * __construct function
	 * set $this->data
	 */
	public function __construct()
	{
		parent::__construct();
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
	private function view($view, $data = [])
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
		// $this->load->helper('url'); <-- already done in config/autoload.php
		$data["title"] = "Accueil";
		$this->setData($data);
		$this->view('elements/header');
		$this->view('elements/menu');
		$this->view('blog/index');
		$this->view('elements/footer');
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
		$this->view('elements/header');
		$this->view('elements/menu');

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
            $this->view('blog/contact_ok');
        } else {
            $this->view('blog/contact');
        }
		$this->view('elements/footer');
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
