<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\OptionsResolver\OptionsResolver;


class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, [
                'attr' => [
                    'class' => 'form-control mb-4',
                    "placeholder" => "Name of the event"
                ],
                "label" => "Event Name"
            ])
            ->add('date', null, [
                'attr' => ['class' => 'form-control mb-4'],
                "widget" => "single_text"
            ])
            ->add('description', TextareaType::class, [
                'attr' => [
                    'class' => 'form-control  mb-4',
                    "placeholder" => "Write Here",

                ],
                "label" => "Event Description"
            ])
            ->add('address', null, [
                'attr' => [
                    'class' => 'form-control mb-4',
                    "placeholder" => "Address"
                ],
                "label" => "Event Address"
            ])
            ->add('image', null, [
                'attr' => [
                    'class' => 'form-control mb-4',
                    "placeholder" => "Link to the img"
                ],
                "label" => "Event Cover Img"
            ])

            ->add('email', null, [
                'attr' => [
                    'class' => 'form-control mb-4 w-50',
                    "placeholder" => "Contact email"
                ],
                "label" => "Events email"
            ])
            ->add('phone', null, [
                'attr' => [
                    'class' => 'form-control mb-4 w-50',
                    "placeholder" => "Contact phone number"
                ],
                "label" => "Events Phone Number"
            ])

            ->add('website', null, [
                'attr' => [
                    'class' => 'form-control mb-4 w-50',
                    "placeholder" => "Website"
                ],
                "label" => "Event Website"
            ])
            ->add('capacity', null, [
                'attr' => [
                    'class' => 'form-control mb-4 w-25'

                ],
                "label" => "Capacity"
            ])
            ->add('type', ChoiceType::class, [     //take it from dokumentation- Type/Choice type
                'attr' => [
                    'class' => 'form-control mb-4 w-25',
                    "placeholder" => "How imoportant is it?"
                ],

                'choices'  => [
                    'Chooce Type' => 'Choose',
                    'Cinema' => 'Cinema',
                    'Music' => 'Music',
                    'Museum' => 'Museum',
                    'Theatre' => 'Theatre',
                ]
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
