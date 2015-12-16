Refinery::Videos::Admin::VideosController.class_eval do
  crudify :'refinery/videos/video',
          :title_attribute => 'title',
          :xhr_paging => true,
          :order => 'created_at DESC',
          :sortable => true
end