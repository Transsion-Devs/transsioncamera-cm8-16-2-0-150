.class public Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TP_PICTURE_FPS_SUPPORT_LIST:[Ljava/lang/String;

.field private static final TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;


# instance fields
.field private mRatioOrderIndexArray:[Ljava/lang/Integer;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TpPicSizeSetUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 38
    sget-object v0, Lcom/transsion/camera/utils/CameraConstant;->TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/transsion/camera/utils/CameraConstant;->TP_PICTURE_FPS_SUPPORT_LIST:[Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TP_PICTURE_FPS_SUPPORT_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 44
    const-string v0, "key_picture_size"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    .line 98
    array-length p0, p1

    new-array v0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, p0, :cond_4f

    .line 100
    aget-object v3, p1, v2

    sget-object v4, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;

    aget-object v5, v4, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 101
    sget-object v3, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TP_PICTURE_FPS_SUPPORT_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    .line 103
    :cond_19
    aget-object v3, p1, v2

    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 104
    sget-object v3, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TP_PICTURE_FPS_SUPPORT_LIST:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v0, v2

    .line 106
    :cond_2a
    aget-object v3, p1, v2

    const/4 v5, 0x2

    aget-object v6, v4, v5

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 107
    sget-object v3, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TP_PICTURE_FPS_SUPPORT_LIST:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v0, v2

    .line 109
    :cond_3b
    aget-object v3, p1, v2

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 110
    sget-object v3, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TP_PICTURE_FPS_SUPPORT_LIST:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v0, v2

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4f
    return-object v0
.end method

.method protected createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    move v2, v1

    .line 119
    :goto_7
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_64

    .line 120
    aget-object v3, p1, v2

    sget-object v4, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;

    aget-object v5, v4, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 121
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$drawable;->ic_video_quality_4k30fps:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 123
    :cond_22
    aget-object v3, p1, v2

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 124
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$drawable;->ic_video_quality_2k30fps:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 126
    :cond_37
    aget-object v3, p1, v2

    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 127
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$drawable;->ic_video_quality_1080p30fps:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 129
    :cond_4c
    aget-object v3, p1, v2

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 130
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_video_quality_720p30fps:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_64
    return-object v0
.end method

.method protected createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .registers 7

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    sget-object v4, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    const/4 v3, 0x1

    .line 70
    aget-object v3, v4, v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    const/4 v3, 0x2

    .line 73
    aget-object v3, v4, v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_3c
    aget-object v2, v4, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 80
    :cond_48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_51

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    :cond_51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [Ljava/lang/String;

    move v2, v3

    .line 84
    :goto_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_69

    .line 85
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 89
    :cond_69
    new-array v0, p1, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    :goto_6d
    if-ge v3, p1, :cond_7a

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    :cond_7a
    return-object v1
.end method

.method public getIndex(Ljava/lang/String;)I
    .registers 7

    const/4 v0, -0x1

    if-nez p1, :cond_b

    .line 140
    sget-object p0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "targetValue is null,return index -1"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_b
    const/4 v1, 0x0

    move v2, v0

    .line 144
    :goto_d
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_1e

    .line 145
    aget-object v3, v3, v1

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v2, v1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    if-ne v2, v0, :cond_3c

    .line 150
    sget-object p1, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index is error, orderIndexArray: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/picturesize/TpPictureSizeSettingUISpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3c
    return v2
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 60
    sget p0, Lcom/transsion/camera/R$id;->setting_ui_item_video_quality:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 55
    sget p0, Lcom/transsion/camera/R$drawable;->ic_video_quality:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 50
    sget p0, Lcom/transsion/camera/R$string;->video_quality_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    .line 159
    :goto_4
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_20

    .line 160
    aget-object v4, v4, v3

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v0, v3

    .line 163
    :cond_12
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v2, v3

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_20
    if-ne v0, v2, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
