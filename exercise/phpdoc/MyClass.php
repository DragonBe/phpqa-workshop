<?php
/**
 * In2it PHPQA Exercises
 *
 * These classes are part of the PHPQA Workshop exercises
 * provided by in2it at a conference near you.
 *
 * @package In2it\Phpqa
 * @subpackage Exercise
 * @copyright Copyright 2006 - 2015 in2it vof
 */
namespace In2it\Phpqa\Exercise;
/**
 * Class MyClass
 *
 * Example class for illustrating usage of phpDocumentor
 *
 * @package In2it\Phpqa\Exercise
 */
class MyClass
{
    /**
     * @var string A sample property that takes a simple string
     */
    protected $myProperty;

    /**
     * Sets a value for the sample property
     *
     * @param string $myProperty
     * @return MyClass
     * @throws \InvalidArgumentException
     */
    public function setMyProperty($myProperty)
    {
        if (!$this->isValid($myProperty)) {
            throw new \InvalidArgumentException('This property requires a string');
        }
        $this->myProperty = $myProperty;
        return $this;
    }

    /**
     * Retrieve the sample property value
     * @return string
     */
    public function getMyProperty()
    {
        return $this->myProperty;
    }

    /**
     * Do something with the sample property value
     *
     * @return string
     * @throws \LogicException
     */
    public function doSomething()
    {
        if (null === $this->getMyProperty()) {
            throw new \LogicException('You can\'t do something if the property is not set yet');
        }
        return $this->getMyProperty();
    }

    /**
     * Validation of a string value
     *
     * @param string $values
     * @return bool
     */
    public function isValid($values)
    {
        return ('' !== (string) $values);
    }
}
