.class public Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllEntries:[Ljava/lang/String;

.field private mAllEntryValues:[Ljava/lang/String;

.field private mProjectEntryValueIndexes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoQualityUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 35
    const-string v0, "key_video_quality"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static filterArrayByIndices([Ljava/lang/String;[I)[Ljava/lang/String;
    .registers 5

    .line 122
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 123
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_10

    .line 124
    aget v2, p1, v1

    aget-object v2, p0, v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-object v0
.end method

.method private static typedArrayToDrawableArray(Landroid/content/res/TypedArray;[I)[Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 130
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    move v2, v1

    .line 131
    :goto_5
    array-length v3, p1

    if-ge v2, v3, :cond_1d

    .line 132
    aget v3, p1, v2

    .line 133
    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 134
    invoke-static {v4}, Lcom/transsion/camera/utils/ResCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_18

    .line 136
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 138
    :cond_18
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1d
    return-object v0
.end method


# virtual methods
.method protected createEntryDrawables(Landroid/content/res/Resources;)[Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 100
    sget v0, Lcom/transsion/camera/R$array;->video_quality_setting_entry_drawables_fps_all:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mProjectEntryValueIndexes:[I

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;[I)[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method

.method protected init(Landroid/content/res/Resources;)V
    .registers 8

    .line 46
    sget v0, Lcom/transsion/camera/R$array;->video_quality_setting_entries_fps_all:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mAllEntries:[Ljava/lang/String;

    .line 47
    sget v0, Lcom/transsion/camera/R$array;->video_quality_setting_entry_values_all:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mAllEntryValues:[Ljava/lang/String;

    .line 48
    sget v0, Lcom/transsion/camera/R$array;->video_quality_setting_entry_drawables_fps_all:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mAllEntries:[Ljava/lang/String;

    array-length v1, v1

    .line 50
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mAllEntryValues:[Ljava/lang/String;

    array-length v2, v2

    .line 51
    array-length v0, v0

    if-ne v1, v2, :cond_21

    if-eq v1, v0, :cond_28

    .line 53
    :cond_21
    sget-object v0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoQualitySetting size mismatched !!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    :cond_28
    sget v0, Lcom/transsion/camera/R$array;->video_quality_setting_entry_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    array-length v2, v0

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v2, :cond_4b

    aget-object v4, v0, v3

    .line 58
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mAllEntryValues:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_48

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 63
    :cond_4b
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mProjectEntryValueIndexes:[I

    .line 64
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 5

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mAllEntries:[Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mProjectEntryValueIndexes:[I

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->filterArrayByIndices([Ljava/lang/String;[I)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 85
    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_23

    .line 86
    aget-object v0, p0, p1

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 87
    aget-object v0, p0, p1

    const-string v2, "K"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_23
    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mAllEntryValues:[Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->mProjectEntryValueIndexes:[I

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/videoquality/VideoQualitySettingUISpec;->filterArrayByIndices([Ljava/lang/String;[I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 79
    sget p0, Lcom/transsion/camera/R$id;->setting_ui_item_video_quality:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 74
    sget p0, Lcom/transsion/camera/R$drawable;->ic_video_quality:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 69
    sget p0, Lcom/transsion/camera/R$string;->video_quality_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public shouldHighLightText()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
