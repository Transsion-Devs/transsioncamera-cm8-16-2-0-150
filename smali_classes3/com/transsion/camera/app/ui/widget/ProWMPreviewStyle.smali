.class public Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field public mBl1DCoorY:I

.field public mBl1DSize:I

.field public mBl1OnCenterVertical:Z

.field public mBl1PaddingRight:I

.field public mBl1Res:I

.field public mBl1SCoorY:I

.field public mBl1SSize:I

.field public mBl1Show:Z

.field public mBrandColor:I

.field public mBrandDCoorX:I

.field public mBrandDCoorY:I

.field public mBrandDSize:I

.field public mBrandFont:I

.field public mBrandOnLeft:Z

.field public mBrandRes:Ljava/lang/String;

.field public mBrandSCoorX:I

.field public mBrandSCoorY:I

.field public mBrandSSize:I

.field public mBrandShow:Z

.field private mContext:Landroid/content/Context;

.field public mExifColor:I

.field public mExifDCoorX:I

.field public mExifDCoorY:I

.field public mExifDSize:I

.field public mExifFont:I

.field public mExifOnLeft:Z

.field public mExifRes:Ljava/lang/String;

.field public mExifSCoorX:I

.field public mExifSCoorY:I

.field public mExifSSize:I

.field public mExifShow:Z

.field public mLocationAlignLeft:Z

.field public mLocationColor:I

.field public mLocationDCoorX:I

.field public mLocationDCoorY:I

.field public mLocationDSize:I

.field public mLocationFont:I

.field public mLocationLeftOfTime:Z

.field public mLocationOnLeft:Z

.field public mLocationRes:Ljava/lang/String;

.field public mLocationShow:Z

.field private mResources:Landroid/content/res/Resources;

.field public mRootBackground:I

.field public mSl1BottomAlignBrandText:Z

.field public mSl1DCoorY:I

.field public mSl1DSize:I

.field public mSl1PaddingLeft:I

.field public mSl1Res:I

.field public mSl1SCoorY:I

.field public mSl1SSize:I

.field public mSl1Show:Z

.field public mSl2DCoorY:I

.field public mSl2DSize:I

.field public mSl2PaddingRight:I

.field public mSl2Res:I

.field public mSl2SCoorY:I

.field public mSl2SSize:I

.field public mSl2Show:Z

.field public mSl3DCoorX:I

.field public mSl3DCoorY:I

.field public mSl3DSize:I

.field public mSl3MarginLeft:I

.field public mSl3OnLeft:Z

.field public mSl3Res:I

.field public mSl3RightOfSl1:Z

.field public mSl3SCoorX:I

.field public mSl3SCoorY:I

.field public mSl3SSize:I

.field public mSl3Show:Z

.field public mSl4DCoorX:I

.field public mSl4DCoorY:I

.field public mSl4DSize:I

.field public mSl4PaddingLeft:I

.field public mSl4PaddingRight:I

.field public mSl4Res:I

.field public mSl4SCoorX:I

.field public mSl4SCoorY:I

.field public mSl4SSize:I

.field public mSl4Show:Z

.field public mSl4betweenTimeAndLocation:Z

.field private mStyleId:I

.field public mStyleName:Ljava/lang/String;

.field public mStyleTabResId:I

.field public mStyleValue:Ljava/lang/String;

.field public mTimeColor:I

.field public mTimeDCoorX:I

.field public mTimeDCoorY:I

.field public mTimeDSize:I

.field public mTimeFont:I

.field public mTimeOnLeft:Z

.field public mTimeRes:Ljava/lang/String;

.field public mTimeShow:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProWMStyle"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    .line 119
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleId:I

    .line 120
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 6

    .line 124
    new-instance v0, Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 125
    :try_start_7
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleId:I

    sget-object v2, Lcom/transsion/camera/R$styleable;->ProWMPreview:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_56f

    .line 126
    :try_start_13
    sget v1, Lcom/transsion/camera/R$styleable;->ProWMPreview_style_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleName:Ljava/lang/String;

    .line 127
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProWMPreview init start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_root_background:I

    sget v3, Lcom/transsion/camera/R$drawable;->gold_watermark_bg:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mRootBackground:I

    .line 129
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_style_tab:I

    sget v3, Lcom/transsion/camera/R$drawable;->prowm_style_white:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleTabResId:I

    .line 130
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_style_value:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleValue:Ljava/lang/String;

    .line 132
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl1_show:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->sl1_show:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1Show:Z

    .line 133
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl1_res:I

    sget v3, Lcom/transsion/camera/R$drawable;->red_dot:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1Res:I

    .line 134
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl1_s_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl1_s_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1SCoorY:I

    .line 135
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl1_d_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl1_d_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1DCoorY:I

    .line 136
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl1_s_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl1_s_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1SSize:I

    .line 137
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl1_d_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl1_d_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1DSize:I

    .line 138
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl1_padding_left:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl1_padding_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1PaddingLeft:I

    .line 139
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl1_bottom_align_brand_text:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->sl1_bottom_align_brand_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl1BottomAlignBrandText:Z

    .line 141
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl2_show:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->sl2_show:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2Show:Z

    .line 142
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl2_res:I

    sget v3, Lcom/transsion/camera/R$drawable;->red_dot:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2Res:I

    .line 143
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl2_s_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl2_s_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2SCoorY:I

    .line 144
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl2_d_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl2_d_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2DCoorY:I

    .line 145
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl2_s_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl2_s_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2SSize:I

    .line 146
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl2_d_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl2_d_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2DSize:I

    .line 147
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl2_padding_right:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl2_padding_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl2PaddingRight:I

    .line 149
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_show:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->sl3_show:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3Show:Z

    .line 150
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_res:I

    sget v3, Lcom/transsion/camera/R$drawable;->sl3_res:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3Res:I

    .line 151
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_s_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl3_s_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3SCoorX:I

    .line 152
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_s_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl3_s_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3SCoorY:I

    .line 153
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_d_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl3_d_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3DCoorX:I

    .line 154
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_d_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl3_d_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3DCoorY:I

    .line 155
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_s_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl3_s_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3SSize:I

    .line 156
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_d_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl3_d_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3DSize:I

    .line 157
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_margin_left:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl3_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3MarginLeft:I

    .line 158
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_on_left:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->sl3_on_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3OnLeft:Z

    .line 159
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl3_right_of_sl1:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->sl3_right_of_sl1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl3RightOfSl1:Z

    .line 161
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_show:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->sl4_show:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4Show:Z

    .line 162
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_res:I

    sget v3, Lcom/transsion/camera/R$drawable;->sl4_res:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4Res:I

    .line 163
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_s_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl4_s_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4SCoorX:I

    .line 164
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_s_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl4_s_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4SCoorY:I

    .line 165
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_d_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl4_d_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4DCoorX:I

    .line 166
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_d_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl4_d_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4DCoorY:I

    .line 167
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_s_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl4_s_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4SSize:I

    .line 168
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_d_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl4_d_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4DSize:I

    .line 169
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_between_time_and_location:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->sl4_between_time_and_location:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4betweenTimeAndLocation:Z

    .line 170
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_padding_left:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl4_padding_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4PaddingLeft:I

    .line 171
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_sl4_padding_right:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->sl4_padding_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mSl4PaddingRight:I

    .line 173
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_bl1_show:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->bl1_show:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1Show:Z

    .line 174
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_bl1_res:I

    sget v3, Lcom/transsion/camera/R$drawable;->big_logo1:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1Res:I

    .line 175
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_bl1_s_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->bl1_s_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1SCoorY:I

    .line 176
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_bl1_d_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->bl1_d_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1DCoorY:I

    .line 177
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_bl1_s_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->bl1_s_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1SSize:I

    .line 178
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_bl1_d_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->bl1_d_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1DSize:I

    .line 179
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_bl1_padding_right:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->bl1_padding_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1PaddingRight:I

    .line 180
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_bl1_on_center_vertical:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->bl1_on_center_vertical:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBl1OnCenterVertical:Z

    .line 181
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_show:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->brand_show:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandShow:Z

    .line 182
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_font:I

    sget v3, Lcom/transsion/camera/app/common/R$font;->custom_semibold:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandFont:I

    .line 183
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_res:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandRes:Ljava/lang/String;

    .line 184
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_color:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$color;->brand_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandColor:I

    .line 185
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_s_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->brand_s_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandSCoorX:I

    .line 186
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_s_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->brand_s_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandSCoorY:I

    .line 187
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_d_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->brand_d_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandDCoorX:I

    .line 188
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_d_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->brand_d_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandDCoorY:I

    .line 189
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_s_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->brand_s_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandSSize:I

    .line 190
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_d_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->brand_d_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandDSize:I

    .line 191
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_brand_on_left:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->brand_on_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mBrandOnLeft:Z

    .line 193
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_show:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->exif_show:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifShow:Z

    .line 194
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_font:I

    sget v3, Lcom/transsion/camera/app/common/R$font;->custom_semibold:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifFont:I

    .line 195
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_res:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifRes:Ljava/lang/String;

    .line 196
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_color:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$color;->exif_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifColor:I

    .line 197
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_s_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->exif_s_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifSCoorX:I

    .line 198
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_s_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->exif_s_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifSCoorY:I

    .line 199
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_d_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->exif_d_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifDCoorX:I

    .line 200
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_d_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->exif_d_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifDCoorY:I

    .line 201
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_s_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->exif_s_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifSSize:I

    .line 202
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_d_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->exif_d_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifDSize:I

    .line 203
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_exif_on_left:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->exif_on_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mExifOnLeft:Z

    .line 205
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_time_show:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->time_show:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeShow:Z

    .line 206
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_time_font:I

    sget v3, Lcom/transsion/camera/app/common/R$font;->hurme_geometric_sans_regular:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeFont:I

    .line 207
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_time_res:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeRes:Ljava/lang/String;

    .line 208
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_time_color:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$color;->time_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeColor:I

    .line 209
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_time_d_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->time_d_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeDCoorX:I

    .line 210
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_time_d_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->time_d_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeDCoorY:I

    .line 211
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_time_d_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->time_d_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeDSize:I

    .line 212
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_time_on_left:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->time_on_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mTimeOnLeft:Z

    .line 214
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_show:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->location_show:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationShow:Z

    .line 215
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_font:I

    sget v3, Lcom/transsion/camera/app/common/R$font;->hurme_geometric_sans_regular:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationFont:I

    .line 217
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_res:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationRes:Ljava/lang/String;

    .line 218
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_color:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$color;->location_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationColor:I

    .line 219
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_d_coor_x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->location_d_coor_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationDCoorX:I

    .line 220
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_d_coor_y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->location_d_coor_y:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationDCoorY:I

    .line 221
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_d_size:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->location_d_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationDSize:I

    .line 222
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_on_left:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->location_on_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationOnLeft:Z

    .line 223
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_align_left:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->location_align_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationAlignLeft:Z

    .line 224
    sget v2, Lcom/transsion/camera/R$styleable;->ProWMPreview_location_left_of_time:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->location_left_of_time:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mLocationLeftOfTime:Z

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProWMPreview init end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->mStyleName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_55f
    .catchall {:try_start_13 .. :try_end_55f} :catchall_563

    .line 226
    :try_start_55f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->close()V
    :try_end_562
    .catch Ljava/lang/Exception; {:try_start_55f .. :try_end_562} :catch_56f

    return-void

    :catchall_563
    move-exception p0

    if-eqz v0, :cond_56e

    .line 125
    :try_start_566
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->close()V
    :try_end_569
    .catchall {:try_start_566 .. :try_end_569} :catchall_56a

    goto :goto_56e

    :catchall_56a
    move-exception v0

    :try_start_56b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_56e
    :goto_56e
    throw p0
    :try_end_56f
    .catch Ljava/lang/Exception; {:try_start_56b .. :try_end_56f} :catch_56f

    :catch_56f
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWMPreviewStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProWMPreview init error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
