module Oga
  module ParsingHelpers
    ##
    # Builds an AST node.
    #
    # @param [Symbol] type
    # @param [Array] cihldren
    # @return [Oga::AST::Node]
    #
    def s(type, *children)
      return Oga::AST::Node.new(type, children)
    end

    ##
    # Lexes a string and returns the tokens.
    #
    # @param [String] input
    # @param [Hash] options
    # @return [Array]
    #
    def lex(input, options = {})
      return Oga::XML::Lexer.new(options).lex(input)
    end

    ##
    # Parses the given XML and returns an AST.
    #
    # @param [String] input
    # @param [Hash] options
    # @return [Oga::AST::Node]
    #
    def parse(input, options = {})
      return Oga::XML::Parser.new(options).parse(input)
    end

    ##
    # Parses the given HTML and returns an AST.
    #
    # @see #parse
    #
    def parse_html(input, options = {})
      return Oga::HTML::Parser.new(options).parse(input)
    end
  end # ParsingHelpers
end # Oga
