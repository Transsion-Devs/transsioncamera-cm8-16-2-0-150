.class public Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AI:Ljava/lang/String; = "ai"

.field public static final AIV2:Ljava/lang/String; = "aiv2"

.field private static final BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_SKIN:[Ljava/lang/String;

.field public static final CUSTOM_KEY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EYE_CUSTOM:Ljava/lang/String; = "eye"

.field public static final FACE_BEAUTY_DEFAULT_FEATURE:Ljava/lang/String; = "face_beauty_default_feature"

.field public static final FACE_CUSTOM:Ljava/lang/String; = "face"

.field private static final FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_SKIN:[Ljava/lang/String;

.field private static final PROPERTY_CAMERA_SKIN:Ljava/lang/String; = "debug.vendor.sys.oobe.camera_skin"

.field public static final RESET:Ljava/lang/String; = "reset"

.field public static final SOFTEN_CUSTOM:Ljava/lang/String; = "soften"

.field private static final SUPPORT_BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final SUPPORT_BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final SUPPORT_BACK_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

.field private static final SUPPORT_BACK_CAMERA_SKIN_MALE:[Ljava/lang/String;

.field private static final SUPPORT_FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final SUPPORT_FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final SUPPORT_FRONT_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

.field private static final SUPPORT_FRONT_CAMERA_SKIN_MALE:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final WHITEN_CUSTOM:Ljava/lang/String; = "whiten"


# instance fields
.field private mCustomDefaultValueArray:[Ljava/lang/String;

.field private final mCustomValueArray:[Ljava/lang/String;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mFaceAttributeSupport:Z

.field private final mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mGender:Ljava/lang/String;

.field private mLensFacing:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 48
    const-string v0, "30"

    const-string v1, "0"

    const-string v2, "40"

    filled-new-array {v0, v1, v2, v0}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_SKIN_MALE:[Ljava/lang/String;

    .line 49
    const-string v3, "55"

    const-string v4, "65"

    filled-new-array {v3, v1, v4, v0}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

    .line 50
    const-string v5, "20"

    filled-new-array {v0, v5, v2, v0}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 51
    filled-new-array {v3, v2, v4, v2}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    .line 52
    filled-new-array {v0, v1, v1, v1}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_SKIN_MALE:[Ljava/lang/String;

    .line 53
    filled-new-array {v3, v1, v1, v1}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

    .line 54
    filled-new-array {v0, v5, v1, v1}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 55
    filled-new-array {v3, v2, v1, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    .line 56
    const-string v3, "43"

    filled-new-array {v3, v1, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_SKIN:[Ljava/lang/String;

    .line 57
    const-string v0, "60"

    filled-new-array {v0, v2, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 58
    filled-new-array {v3, v1, v1, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->BACK_CAMERA_SKIN:[Ljava/lang/String;

    .line 59
    filled-new-array {v0, v2, v1, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 61
    const-string v0, "face"

    const-string v1, "eye"

    const-string v2, "soften"

    const-string/jumbo v3, "whiten"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 68
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    .line 70
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 84
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 85
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceAttributeSupport:Z

    .line 86
    const-string p1, "2"

    .line 87
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p3

    .line 86
    const-string v0, "key_gender_attribute_value"

    invoke-virtual {p2, v0, p1, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    return-void
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 117
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initCustomValueArray()V
    .registers 8

    .line 192
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_26

    .line 193
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    .line 194
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_26
    return-void
.end method


# virtual methods
.method public customDefault()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getFeatureId()I
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    .line 208
    const-string v2, "face_beauty_default_feature"

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFeatureProgress(Ljava/lang/String;)I
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    .line 100
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initCustomValue(Ljava/lang/String;)V
    .registers 9

    .line 121
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    .line 122
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceAttributeSupport:Z

    const-string v2, "0"

    const-string/jumbo v3, "white"

    const-string v4, "1"

    if-eqz v1, :cond_6e

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 126
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 128
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_SKIN_MALE:[Ljava/lang/String;

    goto :goto_44

    .line 130
    :cond_34
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_44

    .line 133
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 134
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_44

    .line 136
    :cond_42
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    .line 140
    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 141
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 143
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_91

    .line 145
    :cond_5d
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_91

    .line 148
    :cond_60
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 149
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_SKIN_MALE:[Ljava/lang/String;

    goto :goto_91

    .line 151
    :cond_6b
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->SUPPORT_BACK_CAMERA_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_91

    .line 156
    :cond_6e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 157
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 158
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->FRONT_CAMERA_SKIN:[Ljava/lang/String;

    .line 163
    :cond_7e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mLensFacing:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 164
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 165
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    goto :goto_91

    .line 167
    :cond_8f
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->BACK_CAMERA_SKIN:[Ljava/lang/String;

    .line 172
    :cond_91
    :goto_91
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "soften"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initCustomValue default: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mFaceAttributeSupport:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v2, :cond_f6

    .line 182
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e2
    if-ge v3, v0, :cond_f6

    .line 183
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v5, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget-object v6, p1, v3

    invoke-virtual {v4, v5, v6, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e2

    .line 188
    :cond_f6
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->initCustomValueArray()V

    return-void
.end method

.method public restoreDefault()V
    .registers 8

    .line 109
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2a

    .line 110
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 111
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomDefaultValueArray:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2a
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mGender:Ljava/lang/String;

    return-void
.end method

.method public updateFeatureId(I)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 203
    const-string v2, "face_beauty_default_feature"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateFeatureProgress(Ljava/lang/String;I)V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mCustomValueArray:[Ljava/lang/String;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
