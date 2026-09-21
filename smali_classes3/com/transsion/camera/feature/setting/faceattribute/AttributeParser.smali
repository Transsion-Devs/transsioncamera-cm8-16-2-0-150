.class public Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$8X-B5DxRBIS0v_ZAanDBaNHxVuQ(Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Z
    .registers 2

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PoFm_0PFBUlgrLGOTeA47gpJyJo(ILcom/transsion/camera/utils/SettingInfo$CameraFace;)Z
    .registers 2

    .line 38
    invoke-virtual {p1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getRace()I

    move-result p1

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Q6ZdMsdyVrF-5j8JKGiqFNrta2M(Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Z
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SKvau5yH2On3wzrU5NAriXgWbRI(Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Z
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e3A1_HJwzq3N1M-S5x-iq5Nof7w(Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Z
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AttributeParser"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAttribute([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;
    .registers 8

    .line 24
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;-><init>()V

    if-eqz p0, :cond_14b

    .line 26
    array-length v1, p0

    if-nez v1, :cond_c

    goto/16 :goto_14b

    .line 31
    :cond_c
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    const-string v2, "1"

    const/4 v3, 0x0

    if-eqz v1, :cond_4d

    .line 32
    aget-object v1, p0, v3

    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->age(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->gender(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v1

    aget-object v2, p0, v3

    .line 34
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getRace()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->race(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v1

    aget-object p0, p0, v3

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->skinColor(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    goto/16 :goto_146

    .line 36
    :cond_4d
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    const/4 v4, 0x1

    const-string v5, "2"

    if-eqz v1, :cond_b4

    .line 37
    aget-object v1, p0, v3

    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getRace()I

    move-result v1

    .line 38
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v6, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 39
    aget-object v2, p0, v3

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->age(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v5}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->gender(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v2

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->race(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v1

    aget-object p0, p0, v3

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->skinColor(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    goto/16 :goto_146

    .line 44
    :cond_9d
    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->multiSkinColor(Z)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v1

    aget-object p0, p0, v3

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->age(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object p0

    .line 46
    invoke-virtual {p0, v5}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->gender(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    goto/16 :goto_146

    .line 49
    :cond_b4
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda3;-><init>()V

    .line 50
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v3, 0x0

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz v1, :cond_fa

    .line 54
    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->multiGender(Z)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->age(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object p0

    .line 56
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->gender(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getRace()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->race(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->skinColor(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    goto :goto_146

    .line 60
    :cond_fa
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda4;-><init>()V

    .line 61
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 63
    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz p0, :cond_13f

    .line 65
    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->multiGender(Z)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->age(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v5}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->gender(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getRace()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->race(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->skinColor(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;

    goto :goto_146

    .line 71
    :cond_13f
    sget-object p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "parseAttribute multi gender unknown!"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    :goto_146
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->build()Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;

    move-result-object p0

    return-object p0

    .line 27
    :cond_14b
    :goto_14b
    sget-object p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "parseAttribute cameraFace is empty"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->build()Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;

    move-result-object p0

    return-object p0
.end method
