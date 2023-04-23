<?php
class record_class{
	public $className = "";
	public $functionName = "";
	public $pageName = "";
	public $keyName = array();
	public $valueName = array();
	public $strings = "";
	public function __construct($className, $functionName, $pageName, $keyName, $valueName, $strings){
		$this->className = $className;
		$this->functionName = $functionName;
		$this->pageName = $pageName;
		$this->keyName = $keyName;
		$this->valueName = $valueName;
		$this->strings = $strings;
	}
	public function record_function($className = false, $functionName = false, $pageName = false, $keyName = false, $valueName = false, $strings = false){
		$this->className = $className != false ? $className : $this->className;
		$this->functionName = $functionName != false ? $functionName : $this->functionName;
		$this->pageName = $pageName != false ? $pageName : $this->pageName;
		$this->keyName = $keyName != false ? $keyName : $this->keyName;
		$this->valueName = $valueName != false ? $valueName : $this->valueName;
		$this->strings = $strings != false ? $strings : $this->strings;
		return address_class::address_function($this->className, $this->functionName, $this->pageName, $this->keyName, $this->valueName, $this->strings);
	}
}
?>