# Copyright (c) 2017 Piotr Robert Konopelko, Core Technology Sp. z o.o.
# 
# This file is part of MooseFS.
# 
# MooseFS is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, version 2 (only).
# 
# MooseFS is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with MooseFS; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02111-1301, USA
# or visit http://www.gnu.org/licenses/gpl-2.0.html

TEX=pdflatex
RM=rm

all: MooseFS-2-0-Users-Manual.pdf MooseFS-3-0-Users-Manual.pdf MooseFS-Step-by-Step-Tutorial.pdf MooseFS-Upgrade-Guide.pdf

MooseFS-2-0-Users-Manual.pdf:
	$(TEX) -synctex=1 MooseFS-2-0-Users-Manual.tex
	$(TEX) -synctex=1 MooseFS-2-0-Users-Manual.tex
	$(RM) -v MooseFS-2-0-Users-Manual.{aux,log,out,synctex.gz,toc}

MooseFS-3-0-Users-Manual.pdf:
	$(TEX) -synctex=1 MooseFS-3-0-Users-Manual.tex
	$(TEX) -synctex=1 MooseFS-3-0-Users-Manual.tex
	$(RM) -v MooseFS-3-0-Users-Manual.{aux,log,out,synctex.gz,toc}

MooseFS-Step-by-Step-Tutorial.pdf:
	$(TEX) -synctex=1 MooseFS-Step-by-Step-Tutorial.tex
	$(TEX) -synctex=1 MooseFS-Step-by-Step-Tutorial.tex
	$(RM) -v MooseFS-Step-by-Step-Tutorial.{aux,log,out,synctex.gz,toc}

MooseFS-Upgrade-Guide.pdf:
	$(TEX) -synctex=1 MooseFS-Upgrade-Guide.tex
	$(TEX) -synctex=1 MooseFS-Upgrade-Guide.tex
	$(RM) -v MooseFS-Upgrade-Guide.{aux,log,out,synctex.gz,toc}

clean:
	$(RM) -v *.pdf

