.class public Lcom/transsion/camera/app/ui/widget/ProEditWatermark;
.super Lcom/transsion/camera/app/ui/widget/ProWatermarkView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;,
        Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;,
        Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;
    }
.end annotation


# static fields
.field private static final CHECKED_OFF_ALL:I = 0x0

.field private static final CHECKED_ON_BRAND:I = 0x8

.field private static final CHECKED_ON_CITY:I = 0x2

.field private static final CHECKED_ON_TEXT:I = 0x4

.field private static final CHECKED_ON_TIME:I = 0x1

.field private static final DEFAULT_TEXT:Ljava/lang/String; = "DEFAULT_TEXT"

.field private static final EDIT_TEXT_INPUT:Ljava/lang/String; = "true"

.field private static final EDIT_WATERMARK_FRAGMENT_LOACTION_THREAD:Ljava/lang/String; = "edit_watermark_fragment_location_thread"

.field private static final LOCATION_UPDATE_RETRY:I = 0x5

.field private static final MSG_LOCATION_UPDATE:I = 0x65

.field private static final NOT_SHOW_CITY_INFO:I = 0x2

.field private static final SHOW_CITY_INFO:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final WATERMARK_BASE_ASCII_CODE:I = 0x30


# instance fields
.field private mCheckStatus:I

.field private mCheckedSortItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

.field private mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

.field private mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mEditWatermarkItemCoverView:Landroid/view/View;

.field private mEditWatermarkSortCoverView:Landroid/view/View;

.field private mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

.field private mInfoCity:Ljava/lang/String;

.field private mInfoHint:Ljava/lang/String;

.field private mInfoText:Ljava/lang/String;

.field private mInfoTime:Ljava/lang/String;

.field private mIsResumed:Z

.field private mIsSelected:Z

.field private mIsSortMode:Z

.field private mLocationHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mNormalTypeface:Landroid/graphics/Typeface;

.field private mPermissionRequest:Z

.field private mPreviewBrand:Landroid/widget/TextView;

.field private mPreviewCity:Landroid/widget/TextView;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTime:Landroid/widget/TextView;

.field private mProEditWaterMarkItemTouchCallback:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkItemTouchCallback;

.field private mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

.field private mSortButton:Landroid/widget/Button;

.field private mSortedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mWaterMarkItemBrand:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field private mWaterMarkItemCity:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field private mWaterMarkItemText:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field private mWaterMarkItemTime:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;


# direct methods
.method public static synthetic $r8$lambda$1-9Agg2BI5SCpef_iGMPdkwd3Pw(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->lambda$showCustomizeDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Y-a4fvqwkER9pWjBORqIy97QkQ(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->lambda$updateCityInfo$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$BfpU5-ht4Lq4k33VatJPwGyEF2c(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;)Ljava/lang/String;
    .registers 1

    .line 511
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DXzm6-zCOzpu2TfOmTyoZF-hExM(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->lambda$inflateView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$YKd4Sn-5VPUau68K8f6CVpdrn-g(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->lambda$showCustomizeDialog$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZEZd9NyuC17UgvQ2qnt1-Kw6jwM(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->lambda$updateOptionCheckedState$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$eXTJJcMGpZ0pG0pjmNR-zfWKNyE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rrAZmagBdyD-bHi--BMerOrPVDI(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->lambda$inflateView$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCheckStatus(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoCity(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateCheckedSortItemList(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCheckedSortItemList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCityInfo(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCityInfo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCityItemViewState(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCityItemViewState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCityPreviewTextInMainThread(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCityPreviewTextInMainThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 89
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProEditWatermark"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .registers 3

    .line 151
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;-><init>(Landroid/view/LayoutInflater;)V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    .line 112
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method

.method private addBrandTextView(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 7

    .line 840
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->getBrandWatermark()I

    move-result v0

    .line 841
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_89

    if-nez p1, :cond_25

    .line 843
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 844
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 845
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 847
    :cond_25
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 848
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 849
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 850
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 852
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 853
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/transsion/camera/R$dimen;->edit_watermark_brand_preview_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 854
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 855
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addBrandTextView]: mCheckStatus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", status: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 857
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    :cond_89
    if-eqz p1, :cond_8e

    .line 860
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8e
    return-object p1
.end method

.method private addPreviewTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;I)Landroid/widget/TextView;
    .registers 8

    .line 808
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addPreviewTextView]: mCheckStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", text = \""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 808
    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 810
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    and-int/2addr p3, p4

    const/16 v0, 0x8

    if-ne p3, p4, :cond_9b

    if-nez p1, :cond_66

    .line 812
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 813
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 814
    sget-object p4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 p4, 0x41200000    # 10.0f

    .line 815
    invoke-virtual {p1, p3, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 816
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p3, -0x1

    .line 817
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    :cond_66
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 821
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lcom/transsion/camera/R$dimen;->default_edit_watermark_height:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p0, -0x2

    .line 822
    iput p0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 823
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_97

    .line 824
    const-string p0, ""

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_97

    .line 825
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 826
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    .line 828
    :cond_97
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    :cond_9b
    if-eqz p1, :cond_a0

    .line 833
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a0
    return-object p1
.end method

.method private getBrandWatermark()I
    .registers 5

    .line 746
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->getBrandWatermarkDrawableName()Ljava/lang/String;

    move-result-object p0

    .line 748
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandCustomize:Z

    if-eqz v0, :cond_38

    .line 749
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWMOptionalResNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 750
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watermarkCustomize_proEditWatermarkSetting: getBrandWatermark = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 751
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    const-string v1, "edit_watermark_brand"

    const-string v2, "drawable"

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWatermarkCustomizedResId(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 755
    :cond_38
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->getWatermarkDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 756
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrandWatermark = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " drawableName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private getBrandWatermarkDrawableName()Ljava/lang/String;
    .registers 4

    .line 762
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 763
    const-string p0, "edit_watermark_brand_special"

    return-object p0

    .line 765
    :cond_9
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandPreview:Z

    .line 766
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrandWatermark = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_2a

    .line 768
    const-string p0, "edit_watermark_brand_preview"

    return-object p0

    .line 770
    :cond_2a
    const-string p0, "edit_watermark_brand"

    return-object p0
.end method

.method private getLanguage()Ljava/lang/String;
    .registers 1

    .line 728
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 729
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSortedItemList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_pro_edit_watermark_sort"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_5d

    .line 320
    sget-object v2, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateLayoutBySorted]: sortedValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 322
    array-length v2, v0

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_5c

    aget-char v4, v0, v3

    add-int/lit8 v4, v4, -0x30

    if-eqz v4, :cond_54

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4e

    const/4 v5, 0x2

    if-eq v4, v5, :cond_48

    const/4 v5, 0x3

    if-eq v4, v5, :cond_42

    goto :goto_59

    .line 334
    :cond_42
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemBrand:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 331
    :cond_48
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemText:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 328
    :cond_4e
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemCity:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 325
    :cond_54
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemTime:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_5c
    return-object v1

    .line 341
    :cond_5d
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[getSortedItemList]: sorted value in data store is null, sort by default "

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemTime:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemCity:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemBrand:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemText:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private inflateView()V
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->pro_edit_watermark_order_recyclerview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->pro_watermark_edit_sort_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortButton:Landroid/widget/Button;

    .line 276
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    new-instance v0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    .line 278
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->setProEditWatermarkEventListener(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;)V

    .line 279
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 283
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->getSortedItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortedItemList:Ljava/util/List;

    .line 284
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortedItemList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortedItemList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    if-eqz v0, :cond_63

    .line 286
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortedItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->updateItemsList(Ljava/util/List;)V

    .line 288
    :cond_63
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCheckedSortItemList()V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    if-eqz v0, :cond_7a

    .line 290
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoHint:Ljava/lang/String;

    goto :goto_77

    :cond_75
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    :goto_77
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->setTextWaterMarkSummary(Ljava/lang/String;)V

    .line 292
    :cond_7a
    new-instance v0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkItemTouchCallback;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    new-instance v2, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkItemTouchCallback;-><init>(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkItemTouchCallback$IProEditWaterMarkItemControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mProEditWaterMarkItemTouchCallback:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkItemTouchCallback;

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkItemTouchCallback;->setLongPressDragEnabled(Z)V

    .line 312
    new-instance v0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mProEditWaterMarkItemTouchCallback:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkItemTouchCallback;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private initSwitchesChecked()V
    .registers 9

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 188
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v2, "key_time_watermark"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 189
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v4, "key_city_watermark"

    .line 190
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-virtual {v2, v4, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 191
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_brand_watermark"

    .line 192
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v4, v5, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 193
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "key_text_watermark"

    .line 194
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-virtual {v5, v6, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 195
    sget-object v3, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[initSwitchesChecked]: timeSwitchChecked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", citySwitchChecked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", brandSwitchChecked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", textSwitchChecked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_7a

    .line 199
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    :cond_7a
    if-eqz v2, :cond_82

    .line 202
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    :cond_82
    if-eqz v4, :cond_8a

    .line 205
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    :cond_8a
    if-eqz v1, :cond_92

    .line 208
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    :cond_92
    return-void
.end method

.method private initWaterMarkItems()V
    .registers 7

    .line 176
    new-instance v0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->time_water_mark_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$drawable;->ic_edit_watermark_sort:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemTime:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 178
    new-instance v0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->city_water_mark_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$drawable;->ic_edit_watermark_sort:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemCity:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 180
    new-instance v0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->text_water_mark_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$drawable;->ic_edit_watermark_sort:I

    const/4 v5, 0x2

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemText:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 182
    new-instance v0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->brand_water_mark_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$drawable;->ic_edit_watermark_sort:I

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemBrand:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    return-void
.end method

.method private synthetic lambda$inflateView$0()V
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$inflateView$1()V
    .registers 6

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_18

    .line 296
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 298
    :goto_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 301
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->getEditWaterMarkUIItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortedItemList:Ljava/util/List;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortedItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 304
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 306
    :cond_46
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onMovedEnd]: sortedValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_pro_edit_watermark_sort"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCheckedSortItemList()V

    .line 309
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateEditWaterMarkUIItemsSorted()V

    return-void
.end method

.method private synthetic lambda$showCustomizeDialog$6(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 607
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    if-eqz v0, :cond_17

    .line 609
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->setTextWaterMarkSummary(Ljava/lang/String;)V

    .line 611
    :cond_17
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_24

    .line 612
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    :cond_24
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_text_watermark_info"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 615
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->dismissOprate(Landroid/content/DialogInterface;)V

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_40

    .line 617
    sget-object p2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 619
    :cond_40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo p1, "true"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DEFAULT_TEXT"

    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$showCustomizeDialog$7(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 622
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->dismissOprate(Landroid/content/DialogInterface;)V

    .line 623
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_e

    .line 624
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$updateCityInfo$5()V
    .registers 4

    .line 551
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->isResumed()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 554
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const/4 v1, 0x0

    const-string v2, "key_edit_watermark"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateOptionCheckedState$2()V
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onOptionCityClicked(Landroid/widget/CheckBox;)V
    .registers 9

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 385
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 387
    :cond_8
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 388
    sget-object v2, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onOptionCityClicked]: target checked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "key_city_watermark"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mSwitchStatus: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    .line 389
    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mInfoCity: \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez v0, :cond_55

    const-string v3, "on"

    goto :goto_57

    :cond_55
    const-string v3, "off"

    :goto_57
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v3, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 392
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    if-nez v0, :cond_66

    or-int/lit8 p1, p1, 0x2

    goto :goto_68

    :cond_66
    and-int/lit8 p1, p1, -0x3

    :goto_68
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    if-nez v0, :cond_82

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    if-nez p1, :cond_82

    .line 394
    const-string p1, "[onOptionCityClicked]: no location permission: "

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLocationPermissions()Z

    const/4 p1, 0x1

    .line 396
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPermissionRequest:Z

    return-void

    .line 399
    :cond_82
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v3, "key_edit_watermark"

    invoke-virtual {p1, v1, v3}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    if-nez v0, :cond_a6

    .line 401
    const-string p1, "[onOptionCityClicked]: click city watermark item, to update location"

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 404
    iput v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    .line 405
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    :cond_a6
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCheckedSortItemList()V

    .line 409
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateLayoutBySorted()V

    return-void
.end method

.method private onOptionClicked(Landroid/widget/CheckBox;Ljava/lang/String;I)V
    .registers 5

    .line 413
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->onOptionClicked(ZLandroid/widget/CheckBox;Ljava/lang/String;I)V

    return-void
.end method

.method private onOptionClicked(ZLandroid/widget/CheckBox;Ljava/lang/String;I)V
    .registers 10

    .line 417
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOptionClicked]: target checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSwitchStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    .line 418
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 420
    const-string p2, "key_time_watermark"

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "off"

    const-string v3, "on"

    if-eqz v1, :cond_55

    .line 421
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    if-eqz p1, :cond_51

    move-object v4, v3

    goto :goto_52

    :cond_51
    move-object v4, v2

    :goto_52
    invoke-virtual {v1, p2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    :cond_55
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p1, :cond_5a

    move-object v2, v3

    :cond_5a
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p2, p3, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_68

    .line 424
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    or-int/2addr p1, p4

    goto :goto_6c

    :cond_68
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    not-int p2, p4

    and-int/2addr p1, p2

    :goto_6c
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[onOptionClicked]: changed mCheckStatus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCheckedSortItemList()V

    .line 427
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateLayoutBySorted()V

    return-void
.end method

.method private recordLocation()V
    .registers 4

    .line 492
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsResumed:Z

    if-nez v0, :cond_5

    goto :goto_3d

    .line 496
    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsSelected:Z

    if-eqz v0, :cond_3d

    .line 497
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[recordLocation]: record location and update location info, the location option is continuously turned on"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    const-string v2, "key_edit_watermark"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 502
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    .line 503
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3d
    :goto_3d
    return-void
.end method

.method private resetToDefaultSort()V
    .registers 5

    .line 878
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resetToDefaultSort]: set KEY_EDIT_WATERMARK_SORT null in dataStore"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 879
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_edit_watermark_sort"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private showCustomizeDialog()V
    .registers 7

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 599
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showCustomizeDialog: dialog is showing return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 602
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "DEFAULT_TEXT"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 603
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/transsion/camera/R$string;->water_mark_dialog_title:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTitle(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v1

    if-eqz v0, :cond_4d

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoHint:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_4d

    :cond_4b
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoHint:Ljava/lang/String;

    .line 605
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$integer;->water_mark_custom_text_limit:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v4, 0x0

    .line 604
    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/transsion/widgetslib/dialog/InputDialog;->setInputNum(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$OnInputNumListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_dialog_rename:I

    new-instance v2, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V

    .line 606
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_dialog_cancel:I

    new-instance v2, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V

    .line 621
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    .line 627
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8a

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->requireHungStatus(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    .line 630
    :cond_8a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 632
    new-instance v2, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$integer;->water_mark_custom_text_limit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    new-array v3, v1, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 633
    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 634
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 636
    new-instance v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$1;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 657
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->edit_watermark_dialog_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 660
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private updateCheckedSortItemList()V
    .registers 11

    .line 431
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    move v1, v3

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    move v4, v3

    goto :goto_13

    :cond_12
    move v4, v2

    :goto_13
    and-int/lit8 v6, v0, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1a

    move v6, v3

    goto :goto_1b

    :cond_1a
    move v6, v2

    :goto_1b
    const/16 v7, 0x8

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_22

    move v0, v3

    goto :goto_23

    :cond_22
    move v0, v2

    .line 435
    :goto_23
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckedSortItemList:Ljava/util/List;

    move v7, v2

    .line 436
    :goto_2b
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortedItemList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7b

    .line 437
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortedItemList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v8

    if-eqz v8, :cond_6f

    if-eq v8, v3, :cond_5d

    if-eq v8, v5, :cond_53

    const/4 v9, 0x3

    if-eq v8, v9, :cond_49

    goto :goto_78

    :cond_49
    if-eqz v0, :cond_78

    .line 456
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckedSortItemList:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemBrand:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_53
    if-eqz v6, :cond_78

    .line 451
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckedSortItemList:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemText:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_5d
    if-eqz v4, :cond_78

    .line 445
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_78

    .line 446
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckedSortItemList:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemCity:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_6f
    if-eqz v1, :cond_78

    .line 441
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckedSortItemList:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemTime:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_78
    :goto_78
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 463
    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckedSortItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_86
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 465
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_86

    .line 467
    :cond_9a
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[exitEditWaterMarkSortFragment]: sortedValue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_edit_watermark_sort"

    invoke-virtual {v1, v5, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 469
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v3, "key_edit_watermark_item"

    invoke-virtual {v1, v3, v0, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateCityInfo(I)V
    .registers 6

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v1, "key_edit_watermark"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 543
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCityInfoFromLocation(Landroid/location/Location;)V

    return-void

    .line 545
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/location/LocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_79

    if-lez p1, :cond_5a

    .line 548
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCityInfo]: last known location is null, retry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 558
    iput v1, v0, Landroid/os/Message;->what:I

    add-int/lit8 p1, p1, -0x1

    .line 559
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 562
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    if-nez p1, :cond_78

    .line 563
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_gps_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_78
    return-void

    .line 568
    :cond_79
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateCityInfo] update city info by last known location"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 569
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCityInfoFromLocation(Landroid/location/Location;)V

    return-void
.end method

.method private updateCityInfoFromLocation(Landroid/location/Location;)V
    .registers 7

    .line 575
    invoke-static {p1}, Lcom/transsion/camera/utils/LocationUtil;->getLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 577
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCityInfoFromLocation]: Longitude and latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 584
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/LocationUtil;->getAddress(Landroid/location/Location;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 586
    const-string p1, "[updateCityInfoFromLocation]: no specific location information was obtained"

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_network_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 588
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 590
    :cond_5e
    const-string v0, "[updateCityInfoFromLocation]: specific location information was obtained"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 591
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    .line 592
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6f
    return-void
.end method

.method private updateCityItemViewState()V
    .registers 5

    .line 990
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_9

    goto :goto_3a

    :cond_9
    const/4 v0, 0x0

    .line 994
    :goto_a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 995
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_3a

    .line 999
    :cond_1b
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1001
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    .line 1004
    sget v2, Lcom/transsion/camera/R$id;->edit_watermark_item_ui_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1005
    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_3a
    :goto_3a
    return-void
.end method

.method private updateCityPreviewTextInMainThread()V
    .registers 4

    .line 911
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateCityPreviewTextInMainThread]: update city info in main thread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    if-eqz v1, :cond_25

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewCity:Landroid/widget/TextView;

    if-eqz v1, :cond_25

    .line 913
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_25

    .line 914
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewCity:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 916
    :cond_25
    const-string v1, "[updateCityPreviewTextInMainThread]: mPreviewCity is not visible, sort by default"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateLayoutBySorted()V

    return-void
.end method

.method private updateLayoutByDefaultSort()V
    .registers 5

    .line 868
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->resetToDefaultSort()V

    .line 869
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->getTimeInfo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemTime:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->addPreviewTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewTime:Landroid/widget/TextView;

    .line 871
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewCity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemCity:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->addPreviewTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewCity:Landroid/widget/TextView;

    .line 872
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoHint:Ljava/lang/String;

    goto :goto_33

    :cond_31
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    :goto_33
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemText:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->addPreviewTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewText:Landroid/widget/TextView;

    .line 874
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewBrand:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->addBrandTextView(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewBrand:Landroid/widget/TextView;

    return-void
.end method

.method private updateLayoutBySorted()V
    .registers 8

    .line 777
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_edit_watermark_sort"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 779
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateLayoutBySorted]: sortedValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 781
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 782
    array-length v1, v0

    const/4 v2, 0x0

    :goto_30
    if-ge v2, v1, :cond_82

    aget-char v3, v0, v2

    add-int/lit8 v3, v3, -0x30

    const/4 v4, 0x1

    if-eqz v3, :cond_71

    const/4 v5, 0x2

    if-eq v3, v4, :cond_64

    if-eq v3, v5, :cond_4b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    goto :goto_7f

    .line 797
    :cond_42
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewBrand:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->addBrandTextView(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewBrand:Landroid/widget/TextView;

    goto :goto_7f

    .line 793
    :cond_4b
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 794
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoHint:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    :goto_5a
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemText:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    const/4 v6, 0x4

    .line 793
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->addPreviewTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewText:Landroid/widget/TextView;

    goto :goto_7f

    .line 789
    :cond_64
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewCity:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemCity:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->addPreviewTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewCity:Landroid/widget/TextView;

    goto :goto_7f

    .line 785
    :cond_71
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->getTimeInfo()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mWaterMarkItemTime:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-direct {p0, v3, v5, v6, v4}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->addPreviewTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewTime:Landroid/widget/TextView;

    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_82
    return-void

    .line 802
    :cond_83
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateLayoutBySorted]: sorted value in data store is null, sort by default "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 803
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateLayoutByDefaultSort()V

    return-void
.end method

.method private updateOptionCheckedState()V
    .registers 8

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    if-nez v0, :cond_9

    goto :goto_64

    .line 356
    :cond_9
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateOptionCheckedState]: mSwitchStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2f

    move v1, v3

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_37

    move v4, v3

    goto :goto_38

    :cond_37
    move v4, v2

    :goto_38
    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3f

    move v5, v3

    goto :goto_40

    :cond_3f
    move v5, v2

    :goto_40
    const/16 v6, 0x8

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_46

    move v2, v3

    .line 361
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->setItemChecked(ZZZZ)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 365
    :cond_5e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 353
    :cond_64
    :goto_64
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[updateOptionCheckedState]: variable is null, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private whileGettingLocation()V
    .registers 6

    .line 883
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    if-nez v0, :cond_44

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_44

    .line 884
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[whileGettingLocation]: failed to get location, close city watermark"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 885
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCityItemViewState()V

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_city_watermark"

    const-string v4, "off"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 887
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    .line 888
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->water_mark_gps_toast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_44

    .line 890
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_44
    return-void
.end method


# virtual methods
.method getLayoutId()I
    .registers 1

    .line 241
    sget p0, Lcom/transsion/camera/R$layout;->pro_watermark_edit_layout:I

    return p0
.end method

.method getProWatermarkValue()Ljava/lang/String;
    .registers 1

    .line 1025
    const-string p0, "1"

    return-object p0
.end method

.method public getSystemTime()Ljava/lang/String;
    .registers 5

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 734
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 735
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm"

    invoke-direct {v2, v3, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 736
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 737
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .registers 2

    .line 741
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->getSystemTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoTime:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .line 156
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->init(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->text_water_mark_input_tip:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoHint:Ljava/lang/String;

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, ""

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_text_watermark_info"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_city_watermark_info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    .line 161
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[init]: get city info from data store: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    new-instance p1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/ProEditWatermark-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    .line 165
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "edit_watermark_fragment_location_thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 167
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/ProEditWatermark-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

    .line 168
    const-string p1, "sans-serif-medium"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->initWaterMarkItems()V

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->initSwitchesChecked()V

    return-void
.end method

.method initDefaultValue()V
    .registers 8

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_time_watermark"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_brand_watermark"

    invoke-virtual {v1, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 217
    const-string v4, "on"

    if-nez v0, :cond_39

    .line 218
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, "[initDefaultValue]: time watermark set default value to on, while support ProWatermark"

    invoke-static {v0, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v4, v6, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_39

    .line 221
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_39
    if-nez v1, :cond_4b

    .line 225
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initDefaultValue]: brand watermark set default value to on, while support ProWatermark"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v4, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    :cond_4b
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldHideDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 231
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initDefaultValue]: turn off the brand watermark, shouldHideDeviceInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v0, v5, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_6e

    .line 234
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v5, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6e
    return-void
.end method

.method public isResumed()Z
    .registers 1

    .line 930
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsResumed:Z

    return p0
.end method

.method public onCheckChangeListener(Landroid/widget/CheckBox;Z)V
    .registers 5

    .line 695
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    const-string v0, "key_text_watermark"

    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->onOptionClicked(ZLandroid/widget/CheckBox;Ljava/lang/String;I)V

    .line 696
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateOptionCheckedState()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/camera/R$id;->pro_watermark_edit_sort_view:I

    if-ne p1, v0, :cond_41

    .line 372
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsSortMode:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsSortMode:Z

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->save_button:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->sort_water_mark_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsSortMode:Z

    if-eqz v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object p1, v0

    :goto_2e
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mProEditWaterMarkItemTouchCallback:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkItemTouchCallback;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsSortMode:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkItemTouchCallback;->setLongPressDragEnabled(Z)V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    if-eqz p1, :cond_41

    .line 378
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsSortMode:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->setSortMode(Z)V

    :cond_41
    return-void
.end method

.method public onCustomItemClick()V
    .registers 1

    .line 690
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->showCustomizeDialog()V

    return-void
.end method

.method onDestroy()V
    .registers 4

    .line 524
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->whileGettingLocation()V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 527
    const-string v2, "key_edit_watermark_update"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v0, :cond_24

    const/4 v2, -0x2

    .line 530
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 532
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    if-eqz v0, :cond_2b

    .line 533
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 535
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 668
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    goto :goto_27

    .line 680
    :cond_16
    const-string p1, "key_brand_watermark"

    const/16 v0, 0x8

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->onOptionClicked(Landroid/widget/CheckBox;Ljava/lang/String;I)V

    goto :goto_27

    .line 676
    :cond_1e
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->onOptionCityClicked(Landroid/widget/CheckBox;)V

    goto :goto_27

    .line 672
    :cond_22
    const-string p1, "key_time_watermark"

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->onOptionClicked(Landroid/widget/CheckBox;Ljava/lang/String;I)V

    .line 685
    :goto_27
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateOptionCheckedState()V

    return-void
.end method

.method onPause()V
    .registers 7

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckedSortItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda6;-><init>()V

    .line 511
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$$ExternalSyntheticLambda7;-><init>()V

    .line 512
    const-string v2, ""

    invoke-interface {v0, v2, v1}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPause]: sorted items value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 514
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_edit_watermark_item"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_city_watermark_info"

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPause]: set city info to data store: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoCity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mInfoText:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_text_watermark_info"

    invoke-virtual {v0, v3, v1, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_language_watermark"

    invoke-virtual {v0, v3, v1, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 519
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->setResumed(Z)V

    return-void
.end method

.method onResume()V
    .registers 6

    .line 474
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 475
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->setResumed(Z)V

    .line 476
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateLayoutBySorted()V

    .line 477
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateOptionCheckedState()V

    .line 478
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPermissionRequest:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 479
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 480
    const-string v1, "[onResume]: no location permission"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateCityItemViewState()V

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "off"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_city_watermark"

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 483
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mCheckStatus:I

    .line 484
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateOptionCheckedState()V

    .line 487
    :cond_3c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->recordLocation()V

    .line 488
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPermissionRequest:Z

    return-void
.end method

.method public onSelected()V
    .registers 2

    const/4 v0, 0x1

    .line 1019
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsSelected:Z

    .line 1020
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->recordLocation()V

    return-void
.end method

.method public onUnSelected()V
    .registers 2

    const/4 v0, 0x0

    .line 1013
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsSelected:Z

    .line 1014
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->whileGettingLocation()V

    return-void
.end method

.method public setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 922
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method

.method public setResumed(Z)V
    .registers 2

    .line 926
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsResumed:Z

    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 896
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method setUpView()V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_69

    .line 249
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setUpTopView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->edit_watermark_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->edit_watermark_cover_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWatermarkItemCoverView:Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->edit_watermark_sort_cover_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWatermarkSortCoverView:Landroid/view/View;

    .line 253
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->inflateView()V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_34

    goto :goto_69

    .line 259
    :cond_34
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mSortButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 264
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->hideLocationItemView()V

    .line 268
    :cond_5e
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldHideDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->hideBrandItemView()V

    :cond_69
    :goto_69
    return-void
.end method

.method public unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 1057
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1058
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewTime:Landroid/widget/TextView;

    .line 1059
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewCity:Landroid/widget/TextView;

    .line 1060
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewText:Landroid/widget/TextView;

    .line 1061
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mPreviewBrand:Landroid/widget/TextView;

    .line 1062
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    .line 1063
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mHandler:Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    return-void
.end method

.method updateCoverViewState(Z)V
    .registers 7

    .line 1030
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWatermarkItemCoverView:Landroid/view/View;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWatermarkSortCoverView:Landroid/view/View;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_d

    goto :goto_3a

    .line 1035
    :cond_d
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    .line 1036
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWatermarkItemCoverView:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    :goto_1b
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWatermarkItemCoverView:Landroid/view/View;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1038
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWatermarkSortCoverView:Landroid/view/View;

    if-nez p1, :cond_2d

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :cond_2d
    :goto_2d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mEditWatermarkSortCoverView:Landroid/view/View;

    if-nez p1, :cond_37

    if-nez v0, :cond_37

    const/4 v3, 0x1

    :cond_37
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public updateEditWaterMarkUIItemsSorted()V
    .registers 3

    .line 903
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateEditWaterMarkUIItemsSorted]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 905
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 906
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->updateLayoutBySorted()V

    :cond_15
    return-void
.end method

.method updateWatermarkState(Z)V
    .registers 5

    .line 1044
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->mIsSelected:Z

    if-nez v0, :cond_5

    goto :goto_1e

    .line 1047
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_19

    .line 1048
    const-string v1, "key_pro_edit_watermark_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    if-eqz p1, :cond_14

    .line 1049
    const-string v2, "on"

    goto :goto_16

    :cond_14
    const-string v2, "off"

    .line 1048
    :goto_16
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    if-nez p1, :cond_1e

    .line 1052
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->whileGettingLocation()V

    :cond_1e
    :goto_1e
    return-void
.end method
