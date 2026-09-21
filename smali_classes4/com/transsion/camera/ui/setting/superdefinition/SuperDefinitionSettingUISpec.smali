.class public Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final ALL_INFO_MAP:Ljava/util/Map;

.field private final mDefaultInfo:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

.field private final mResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperDefinitionSettingUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;)V
    .registers 10

    .line 122
    const-string v0, "key_super_definition"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 33
    new-instance v1, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_super_definition_off:I

    sget v6, Lcom/transsion/camera/R$drawable;->ic_super_definition_on:I

    sget v7, Lcom/transsion/camera/R$drawable;->ic_super_definition_billion_on:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mDefaultInfo:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    .line 35
    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$1;-><init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->ALL_INFO_MAP:Ljava/util/Map;

    .line 123
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mResource:Landroid/content/res/Resources;

    .line 124
    invoke-virtual {v1, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->loadDrawable(Landroid/content/res/Resources;)V

    return-void
.end method

.method private findSuitableInfo(Ljava/lang/String;[I)Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;
    .registers 10

    if-eqz p2, :cond_d

    .line 256
    array-length v0, p2

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 257
    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_e

    :cond_d
    move-object p2, p1

    .line 263
    :goto_e
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 264
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    .line 265
    :cond_1e
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 266
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    move-object p1, v1

    .line 268
    :goto_2e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    move-object p2, p1

    .line 273
    :cond_35
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLargestSupportedPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_cc

    .line 275
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    const p2, 0x49742400    # 1000000.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x41700000    # 15.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_5d

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mDefaultInfo:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    return-object p0

    .line 282
    :cond_5d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mReplace50MTo48MIcon:Z

    if-eqz p2, :cond_6c

    const/high16 p2, 0x42400000    # 48.0f

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_6c

    move p1, p2

    .line 288
    :cond_6c
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->ALL_INFO_MAP:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/high16 v0, 0x4f000000

    move-object v2, v1

    :cond_79
    :goto_79
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 290
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v0

    if-gez v6, :cond_79

    .line 294
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    move-object v2, v0

    move-object v1, v4

    move v0, v5

    goto :goto_79

    .line 297
    :cond_a4
    sget-object p2, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSuitableInfo: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_d3

    .line 299
    :cond_cc
    sget-object p1, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "findSuitableInfo largest is null."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_d3
    if-nez v1, :cond_d8

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mDefaultInfo:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    return-object p0

    :cond_d8
    return-object v1
.end method

.method private inSensorErrorStatus(Ljava/lang/String;[I)Z
    .registers 7

    .line 215
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mResource:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$bool;->sat_replace_wide:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 217
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v1

    .line 218
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p2, :cond_1d

    .line 220
    array-length v3, p2

    if-lez v3, :cond_1d

    .line 221
    aget p2, p2, v2

    goto :goto_1e

    :cond_1d
    move p2, v2

    .line 223
    :goto_1e
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p2

    if-eqz p0, :cond_30

    if-nez v1, :cond_2e

    if-eqz p1, :cond_30

    if-eqz p2, :cond_30

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    return v2
.end method

.method private loadDrawables([Ljava/lang/String;Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;)[Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 308
    array-length p0, p1

    .line 309
    new-array v0, p0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p0, :cond_41

    .line 311
    aget-object v2, p1, v1

    .line 312
    const-string v3, "off"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1a

    .line 318
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getSingleOffDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_3e

    .line 321
    :cond_1a
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getMultiOffDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_3e

    .line 323
    :cond_21
    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 324
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getOnDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_3e

    .line 325
    :cond_30
    const-string v3, "billion"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 326
    invoke-virtual {p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getBillionDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_41
    return-object v0
.end method


# virtual methods
.method public createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V
    .registers 9

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 174
    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 175
    new-array v1, p3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_36
    if-ge v1, p3, :cond_4d

    .line 181
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 182
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 183
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    aget-object v2, v4, v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 185
    :cond_4d
    sget-object p3, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSupportedEntries cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", streamIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,mShouldEscape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mShouldEscape:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {p3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_94

    if-eqz p2, :cond_9a

    :cond_94
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->inSensorErrorStatus(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 190
    :cond_9a
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 191
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 192
    const-string p0, "[createSupportedEntries] sat\'s streamId is null set supportEntries to null"

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_a4
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->findSuitableInfo(Ljava/lang/String;[I)Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    move-result-object p1

    .line 197
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mDefaultInfo:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    if-ne p1, v1, :cond_d2

    if-eqz p2, :cond_c8

    .line 198
    array-length p1, p2

    if-lez p1, :cond_c8

    .line 199
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mShouldEscape:Z

    if-eqz p1, :cond_c8

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 200
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mShouldEscape:Z

    return-void

    .line 204
    :cond_c8
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 206
    const-string p0, "[createSupportedEntries] current id or streamid do not support set supportEntries to null"

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_d2
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->mResource:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->loadDrawable(Landroid/content/res/Resources;)V

    .line 211
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->loadDrawables([Ljava/lang/String;Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public getMPValue(Ljava/lang/String;[ILjava/lang/String;)I
    .registers 4

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->findSuitableInfo(Ljava/lang/String;[I)Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    move-result-object p0

    .line 242
    invoke-virtual {p0, p3}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;->getMPValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected final init(Landroid/content/res/Resources;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 149
    sget p0, Lcom/transsion/camera/R$array;->super_definition_setting_entries:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 159
    sget p0, Lcom/transsion/camera/R$array;->super_definition_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 154
    sget p0, Lcom/transsion/camera/R$array;->super_definition_setting_entry_values:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 144
    sget p0, Lcom/transsion/camera/R$id;->setting_ui_item_super_definition:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 139
    sget p0, Lcom/transsion/camera/R$drawable;->ic_super_definition_off:I

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 134
    sget p0, Lcom/transsion/camera/R$string;->super_definition_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldHighLightShow(Ljava/lang/String;)Z
    .registers 3

    .line 234
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 237
    :cond_a
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .registers 2

    .line 229
    const-string p0, "off"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
