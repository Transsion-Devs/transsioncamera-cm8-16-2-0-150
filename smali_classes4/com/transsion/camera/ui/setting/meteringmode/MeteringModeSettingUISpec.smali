.class public Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;
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

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MeteringModeSettingUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 27
    const-string v0, "key_metering_mode"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static filterArrayByIndices([Ljava/lang/String;[I)[Ljava/lang/String;
    .registers 5

    .line 103
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 104
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_10

    .line 105
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

    .line 111
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    move v2, v1

    .line 112
    :goto_5
    array-length v3, p1

    if-ge v2, v3, :cond_1d

    .line 113
    aget v3, p1, v2

    .line 114
    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 115
    invoke-static {v4}, Lcom/transsion/camera/utils/ResCache;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_18

    .line 117
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 119
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

    .line 75
    sget v0, Lcom/transsion/camera/R$array;->metering_mode_setting_entry_drawables:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mProjectEntryValueIndexes:[I

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;[I)[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method

.method protected createEntryExtDrawables(Landroid/content/res/Resources;)[Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 88
    sget v0, Lcom/transsion/camera/R$array;->metering_mode_setting_entry_ext_drawables:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mProjectEntryValueIndexes:[I

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;[I)[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method

.method protected createEntryExtHighLightDrawables(Landroid/content/res/Resources;)[Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 96
    sget v0, Lcom/transsion/camera/R$array;->metering_mode_entry_ext_highlight_drawables:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mProjectEntryValueIndexes:[I

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;[I)[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method

.method protected init(Landroid/content/res/Resources;)V
    .registers 8

    .line 32
    sget v0, Lcom/transsion/camera/R$array;->metering_mode_setting_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mAllEntries:[Ljava/lang/String;

    .line 33
    sget v0, Lcom/transsion/camera/R$array;->metering_mode_setting_entry_values_all:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mAllEntryValues:[Ljava/lang/String;

    .line 34
    sget v0, Lcom/transsion/camera/R$array;->metering_mode_setting_entry_drawables:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mAllEntries:[Ljava/lang/String;

    array-length v1, v1

    .line 36
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mAllEntryValues:[Ljava/lang/String;

    array-length v2, v2

    .line 37
    array-length v0, v0

    if-ne v1, v2, :cond_21

    if-eq v1, v0, :cond_28

    .line 39
    :cond_21
    sget-object v0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MeteringModeSettingUISpec size mismatched !!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    :cond_28
    sget v0, Lcom/transsion/camera/R$array;->metering_mode_setting_entry_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    array-length v2, v0

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v2, :cond_4b

    aget-object v4, v0, v3

    .line 44
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mAllEntryValues:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_48

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 49
    :cond_4b
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/featurelibs/facebeauty/FaceBeautyAlgorithm$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mProjectEntryValueIndexes:[I

    .line 50
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mAllEntries:[Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mProjectEntryValueIndexes:[I

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->filterArrayByIndices([Ljava/lang/String;[I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mAllEntryValues:[Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->mProjectEntryValueIndexes:[I

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;->filterArrayByIndices([Ljava/lang/String;[I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 60
    sget p0, Lcom/transsion/camera/R$drawable;->ic_metering_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 55
    sget p0, Lcom/transsion/camera/R$string;->metering_mode_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
