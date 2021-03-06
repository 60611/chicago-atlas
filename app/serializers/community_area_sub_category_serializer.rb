class CommunityAreaSubCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :slug, :indicators
  def indicators
    object.indicators.map do |indicator|
      CommunityAreaIndicatorSerializer.new(indicator, scope: scope, root: false, geo_id: @instance_options[:geo_id])
    end
  end
end
