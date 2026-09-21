.class public Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;
.super Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mRatioOrderIndexArray:[Ljava/lang/Integer;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PictureRatioSettingUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 42
    const-string v0, "key_picture_size"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private findMaxSizeEveryRatio(Ljava/util/List;)Ljava/util/List;
    .registers 7

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v2, Ljava/util/TreeMap;

    new-instance v3, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec$1;-><init>(Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;)V

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->orderOfRatio(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2c

    goto :goto_18

    .line 138
    :cond_2c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 145
    :cond_45
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 146
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_63
    return-object v0
.end method

.method private static orderOfRatio(Landroid/util/Size;)I
    .registers 7

    .line 158
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v2

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    const-wide v2, 0x3ff5555560000000L    # 1.3333333730697632

    sub-double v2, v0, v2

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const-wide v2, 0x3ffc71c720000000L    # 1.7777777910232544

    sub-double v2, v0, v2

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_40

    const/4 p0, 0x2

    return p0

    .line 169
    :cond_40
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p0, v0, v4

    if-gtz p0, :cond_4f

    const/4 p0, 0x3

    return p0

    :cond_4f
    const/4 p0, 0x4

    return p0
.end method

.method private static orderOfRatio(Ljava/lang/String;)I
    .registers 1

    .line 153
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 154
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->orderOfRatio(Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.method private sizeIndexToString(I)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    .line 192
    const-string p0, "1:1"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 193
    const-string p0, "4:3"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 194
    const-string p0, "16:9"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1d

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/R$string;->picture_ratio_setting_full_screen:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private sizeToRatio([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_2c

    .line 177
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2c

    .line 181
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 183
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_1f

    .line 184
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->orderOfRatio(Ljava/lang/String;)I

    move-result v2

    .line 185
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->sizeIndexToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 188
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->sizeToRatio([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$array;->picture_ratio_setting_entry_drawables:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v1, v1

    .line 89
    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_23

    .line 91
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 92
    invoke-static {v4}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->orderOfRatio(Ljava/lang/String;)I

    move-result v4

    .line 93
    aget-object v4, v0, v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 95
    :cond_23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method protected createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .registers 6

    .line 64
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->findMaxSizeEveryRatio(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 67
    new-array v1, v0, [Ljava/lang/String;

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    new-array p1, v0, [Ljava/lang/Integer;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    const/4 p1, 0x0

    :goto_12
    if-ge p1, v0, :cond_25

    .line 72
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    aget-object v3, v1, p1

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->orderOfRatio(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_25
    return-object v1
.end method

.method public getIndex(Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    if-nez p1, :cond_b

    .line 103
    sget-object p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "targetValue is null,return index -1"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 106
    :cond_b
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->orderOfRatio(Ljava/lang/String;)I

    move-result p1

    .line 107
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_3f

    .line 109
    sget-object v0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index is error, orderIndexArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->mRatioOrderIndexArray:[Ljava/lang/Integer;

    .line 110
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", order: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3f
    return v1
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 58
    sget p0, Lcom/transsion/camera/R$id;->setting_ui_item_picture_ratio:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 53
    sget p0, Lcom/transsion/camera/R$drawable;->ic_picture_size:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 48
    sget p0, Lcom/transsion/camera/R$string;->picture_ratio_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 118
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->orderOfRatio(Ljava/lang/String;)I

    move-result p0

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioPopSettingSpec;->orderOfRatio(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
