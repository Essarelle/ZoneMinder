package ONVIF::Device::Types::IOCapabilitiesExtension;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Auxiliary_of :ATTR(:get<Auxiliary>);
my %AuxiliaryCommands_of :ATTR(:get<AuxiliaryCommands>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Auxiliary
        AuxiliaryCommands
        Extension

    ) ],
    {
        'Auxiliary' => \%Auxiliary_of,
        'AuxiliaryCommands' => \%AuxiliaryCommands_of,
        'Extension' => \%Extension_of,
    },
    {
        'Auxiliary' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'AuxiliaryCommands' => 'ONVIF::Device::Types::AuxiliaryData',
        'Extension' => 'ONVIF::Device::Types::IOCapabilitiesExtension2',
    },
    {

        'Auxiliary' => 'Auxiliary',
        'AuxiliaryCommands' => 'AuxiliaryCommands',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::IOCapabilitiesExtension

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
IOCapabilitiesExtension from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Auxiliary


=item * AuxiliaryCommands


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::IOCapabilitiesExtension
   Auxiliary =>  $some_value, # boolean
   AuxiliaryCommands => $some_value, # AuxiliaryData
   Extension =>  { # ONVIF::Device::Types::IOCapabilitiesExtension2
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
