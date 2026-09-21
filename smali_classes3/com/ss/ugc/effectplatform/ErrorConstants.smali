.class public final Lcom/ss/ugc/effectplatform/ErrorConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/ErrorConstants;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/ss/ugc/effectplatform/ErrorConstants;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/ErrorConstants;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/ErrorConstants;->INSTANCE:Lcom/ss/ugc/effectplatform/ErrorConstants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final APIErrorHandle(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_7c

    const/16 p0, 0x271e

    if-eq p1, p0, :cond_79

    const/16 p0, 0x2720

    if-eq p1, p0, :cond_76

    const/16 p0, 0x44c

    if-eq p1, p0, :cond_73

    const/16 p0, 0x44d

    if-eq p1, p0, :cond_70

    packed-switch p1, :pswitch_data_80

    packed-switch p1, :pswitch_data_96

    packed-switch p1, :pswitch_data_a6

    packed-switch p1, :pswitch_data_b8

    .line 99
    const-string p0, "Unkown error"

    return-object p0

    .line 96
    :pswitch_22
    const-string p0, "io error"

    return-object p0

    .line 97
    :pswitch_25
    const-string p0, "No network"

    return-object p0

    .line 86
    :pswitch_28
    const-string p0, "MD5 error"

    return-object p0

    .line 94
    :pswitch_2b
    const-string p0, "No local TAG cache"

    return-object p0

    .line 93
    :pswitch_2e
    const-string p0, "panel is null"

    return-object p0

    .line 92
    :pswitch_31
    const-string p0, "No Downloaded Effects"

    return-object p0

    .line 91
    :pswitch_34
    const-string p0, "SDK error"

    return-object p0

    .line 90
    :pswitch_37
    const-string p0, "Invalid effect list cache !!!"

    return-object p0

    .line 89
    :pswitch_3a
    const-string p0, "Sticker is null"

    return-object p0

    .line 88
    :pswitch_3d
    const-string p0, "Download error"

    return-object p0

    .line 87
    :pswitch_40
    const-string p0, "Cancel download"

    return-object p0

    .line 84
    :pswitch_43
    const-string p0, "App needs to be updated"

    return-object p0

    .line 85
    :pswitch_46
    const-string p0, "Not on allowed list"

    return-object p0

    .line 83
    :pswitch_49
    const-string p0, "The current effect id does not exist"

    return-object p0

    .line 82
    :pswitch_4c
    const-string p0, "Does not support the current device"

    return-object p0

    .line 81
    :pswitch_4f
    const-string p0, "Effect is offline"

    return-object p0

    .line 80
    :pswitch_52
    const-string p0, "no change in content"

    return-object p0

    .line 77
    :pswitch_55
    const-string p0, "app_channel is invalid"

    return-object p0

    .line 76
    :pswitch_58
    const-string p0, "channel is invalid"

    return-object p0

    .line 75
    :pswitch_5b
    const-string p0, "device_type is invalid"

    return-object p0

    .line 74
    :pswitch_5e
    const-string p0, "device_platform is invalid"

    return-object p0

    .line 73
    :pswitch_61
    const-string p0, "device_id is invalid"

    return-object p0

    .line 72
    :pswitch_64
    const-string p0, "sdk_version is invalid"

    return-object p0

    .line 71
    :pswitch_67
    const-string p0, "app_version is invalid"

    return-object p0

    .line 70
    :pswitch_6a
    const-string p0, "access_key is invalid"

    return-object p0

    .line 69
    :pswitch_6d
    const-string p0, "Illegal params (missing or wrong params)"

    return-object p0

    .line 79
    :cond_70
    const-string p0, "access_key does not exist"

    return-object p0

    .line 78
    :cond_73
    const-string p0, "The current application is not a test application"

    return-object p0

    .line 98
    :cond_76
    const-string p0, "link-selector context is null"

    return-object p0

    .line 95
    :cond_79
    const-string p0, "Invalid effect id"

    return-object p0

    .line 68
    :cond_7c
    const-string/jumbo p0, "unknown error"

    return-object p0

    :pswitch_data_80
    .packed-switch 0x3e8
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x7d1
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x2711
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x2719
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method
