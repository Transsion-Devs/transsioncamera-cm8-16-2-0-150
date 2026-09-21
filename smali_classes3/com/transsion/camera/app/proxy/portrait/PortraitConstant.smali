.class public abstract Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 156
    const-string/jumbo v0, "warm"

    const-string v1, "brown"

    const-string v2, "neutral"

    const-string v3, "cold"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public static getKeyFromWhitenValue(I)Ljava/lang/String;
    .registers 2

    .line 169
    div-int/lit8 p0, p0, 0x65

    .line 170
    sget-object v0, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 164
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 p0, p0, 0x65

    .line 165
    sget-object v0, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getRaceByConfigType(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;)Ljava/lang/String;
    .registers 3

    .line 176
    sget-object v0, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant$1;->$SwitchMap$com$transsion$camera$app$common$facebeauty$FaceBeautyConstant$ConfigType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-string v1, "race_A"

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    return-object v1

    .line 187
    :cond_17
    const-string p0, "race_C"

    return-object p0

    .line 184
    :cond_1a
    const-string p0, "race_D"

    return-object p0

    .line 181
    :cond_1d
    const-string p0, "race_B"

    return-object p0

    :cond_20
    return-object v1
.end method
