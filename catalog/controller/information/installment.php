<?php
class ControllerInformationInstallment extends Controller {
	public function index() {
		$this->load->language('information/sitemap');

		$this->document->setTitle('Mua xe trả góp');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => 'Mua xe trả góp',
			'href' => $this->url->link('information/sitemap')
		);

		$data['heading_title'] = 'Mua xe trả góp';

		

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/installment.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/installment.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/information/installment.tpl', $data));
		}
	}
}