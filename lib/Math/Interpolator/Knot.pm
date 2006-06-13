=head1 NAME

Math::Interpolator::Knot - x/y point for use in interpolation

=head1 SYNOPSIS

	use Math::Interpolator::Knot;

	$pt = Math::Interpolator::Knot->new($x, $y);

	$x = $pt->x;
	$y = $pt->y;

	$role = $pt->role;

=head1 DESCRIPTION

An object of this type represents a single known point on a
one-dimensional curve.  It is intended for use with C<Math::Interpolator>,
which will interpolate a curve between known points.  These points are
known as "knots".

=cut

package Math::Interpolator::Knot;

use warnings;
use strict;

our $VERSION = "0.000";

use fields qw(x y);

=head1 CONSTRUCTOR

=over

=item Math::Interpolator::Knot->new(X, Y)

Creates and returns a new knot object with the specified x and y
coordinates.

=cut

sub new($$$) {
	my $class = shift;
	my __PACKAGE__ $self = fields::new($class);
	@{$self}{qw(x y)} = @_;
	return $self;
}

=back

=head1 METHODS

=over

=item $pt->x

Returns the x coordinate of the knot.

=cut

sub x($) {
	my __PACKAGE__ $self = shift;
	return $self->{x};
}

=item $pt->y

Returns the y coordinate of the knot.

=cut

sub y($) {
	my __PACKAGE__ $self = shift;
	return $self->{y};
}

=item $pt->role

Returns the string "KNOT".  This is used to distinguish knots from other
types of entity that could appear in an interpolator's point list.

=cut

sub role($) { "KNOT" }

=back

=head1 SUBCLASSING

The interpolator uses only this public interface, so it is acceptable to
substitute any other class that implements this interface.  This may be
done by subclassing this class, or by reimplementing all three methods
independently.  This is useful, for example, if the exact coordinates
are expensive to calculate and it is desired to perform lazy evaluation
with memoisation.

=head1 SEE ALSO

L<Math::Interpolator>,
L<Math::Interpolator::Source>

=head1 AUTHOR

Andrew Main (Zefram) <zefram@fysh.org>

=head1 COPYRIGHT

Copyright (C) 2006 Andrew Main (Zefram) <zefram@fysh.org>

This module is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;
