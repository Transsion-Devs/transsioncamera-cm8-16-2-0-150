.class public final enum Lcom/singleblur/faceapi/model/ResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/ResultCode;

.field private static final DESCRIPTION_E_ACTIVE_CODE_INVALID:Ljava/lang/String; = "invalid active code"

.field private static final DESCRIPTION_E_ACTIVE_FAIL:Ljava/lang/String; = "license active failed"

.field private static final DESCRIPTION_E_AUTH_EXPIRE:Ljava/lang/String; = "date expired"

.field private static final DESCRIPTION_E_DELNOTFOUND:Ljava/lang/String; = "define not found"

.field private static final DESCRIPTION_E_FAIL:Ljava/lang/String; = "run in fail inside"

.field private static final DESCRIPTION_E_FILE_EXPIRE:Ljava/lang/String; = "model out of date"

.field private static final DESCRIPTION_E_FILE_NOT_FOUND:Ljava/lang/String; = "file no found"

.field private static final DESCRIPTION_E_HANDLE:Ljava/lang/String; = "handle Error,may be cause by sdk out of date or model file incorrect"

.field private static final DESCRIPTION_E_INVALIDARG:Ljava/lang/String; = "invalid argument"

.field private static final DESCRIPTION_E_INVALID_APPID:Ljava/lang/String; = "invalid appid"

.field private static final DESCRIPTION_E_INVALID_AUTH:Ljava/lang/String; = "invalid license"

.field private static final DESCRIPTION_E_INVALID_FILE_FORMAT:Ljava/lang/String; = "model format error"

.field private static final DESCRIPTION_E_INVALID_PIXEL_FORMAT:Ljava/lang/String; = "invalid pixel format"

.field private static final DESCRIPTION_E_LICENSE_IS_NOT_ACTIVABLE:Ljava/lang/String; = "invalid active code"

.field private static final DESCRIPTION_E_MISSLICENSE:Ljava/lang/String; = "con\'t find license"

.field private static final DESCRIPTION_E_MULTI_CALLS:Ljava/lang/String; = "multi calls init license"

.field private static final DESCRIPTION_E_ONLINE_AUTH_CONNECT_FAIL:Ljava/lang/String; = "online auth connect fail"

.field private static final DESCRIPTION_E_ONLINE_AUTH_INVALID:Ljava/lang/String; = "check online fail"

.field private static final DESCRIPTION_E_ONLINE_AUTH_TIMEOUT:Ljava/lang/String; = "check online timeout"

.field private static final DESCRIPTION_E_OUTOFMEMORY:Ljava/lang/String; = "out of memory"

.field private static final DESCRIPTION_E_UNSUPPORTED:Ljava/lang/String; = "unsupport function called"

.field private static final DESCRIPTION_E_UUID_MISMATCH:Ljava/lang/String; = "uuid mismatch"

.field private static final DESCRIPTION_OK:Ljava/lang/String; = "OK"

.field public static final enum E_ACTIVE_CODE_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_ACTIVE_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_AUTH_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_DELNOTFOUND:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_FILE_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_FILE_NOT_FOUND:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_HANDLE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALIDARG:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALID_APPID:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALID_AUTH:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALID_FILE_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_INVALID_PIXEL_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_LICENSE_IS_NOT_ACTIVABLE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_MISSLICENSE:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_MULTI_CALLS:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_ONLINE_AUTH_CONNECT_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_ONLINE_AUTH_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_ONLINE_AUTH_TIMEOUT:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_OUTOFMEMORY:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_UNSUPPORTED:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum E_UUID_MISMATCH:Lcom/singleblur/faceapi/model/ResultCode;

.field public static final enum OK:Lcom/singleblur/faceapi/model/ResultCode;


# instance fields
.field private final resultCode:I


# direct methods
.method private static synthetic $values()[Lcom/singleblur/faceapi/model/ResultCode;
    .registers 24

    .line 3
    sget-object v1, Lcom/singleblur/faceapi/model/ResultCode;->OK:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v2, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALIDARG:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v3, Lcom/singleblur/faceapi/model/ResultCode;->E_HANDLE:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v4, Lcom/singleblur/faceapi/model/ResultCode;->E_OUTOFMEMORY:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v5, Lcom/singleblur/faceapi/model/ResultCode;->E_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v6, Lcom/singleblur/faceapi/model/ResultCode;->E_DELNOTFOUND:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v7, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_PIXEL_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v8, Lcom/singleblur/faceapi/model/ResultCode;->E_FILE_NOT_FOUND:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v9, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_FILE_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v10, Lcom/singleblur/faceapi/model/ResultCode;->E_FILE_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v11, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_AUTH:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v12, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_APPID:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v13, Lcom/singleblur/faceapi/model/ResultCode;->E_AUTH_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v14, Lcom/singleblur/faceapi/model/ResultCode;->E_UUID_MISMATCH:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v15, Lcom/singleblur/faceapi/model/ResultCode;->E_ONLINE_AUTH_CONNECT_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v16, Lcom/singleblur/faceapi/model/ResultCode;->E_ONLINE_AUTH_TIMEOUT:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v17, Lcom/singleblur/faceapi/model/ResultCode;->E_ONLINE_AUTH_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v18, Lcom/singleblur/faceapi/model/ResultCode;->E_LICENSE_IS_NOT_ACTIVABLE:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v19, Lcom/singleblur/faceapi/model/ResultCode;->E_ACTIVE_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v20, Lcom/singleblur/faceapi/model/ResultCode;->E_ACTIVE_CODE_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v21, Lcom/singleblur/faceapi/model/ResultCode;->E_UNSUPPORTED:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v22, Lcom/singleblur/faceapi/model/ResultCode;->E_MISSLICENSE:Lcom/singleblur/faceapi/model/ResultCode;

    sget-object v23, Lcom/singleblur/faceapi/model/ResultCode;->E_MULTI_CALLS:Lcom/singleblur/faceapi/model/ResultCode;

    filled-new-array/range {v1 .. v23}, [Lcom/singleblur/faceapi/model/ResultCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 8
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->OK:Lcom/singleblur/faceapi/model/ResultCode;

    .line 13
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v3, "E_INVALIDARG"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALIDARG:Lcom/singleblur/faceapi/model/ResultCode;

    .line 18
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string v3, "E_HANDLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_HANDLE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 23
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/4 v1, 0x3

    const/4 v2, -0x3

    const-string v3, "E_OUTOFMEMORY"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_OUTOFMEMORY:Lcom/singleblur/faceapi/model/ResultCode;

    .line 28
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/4 v1, 0x4

    const/4 v2, -0x4

    const-string v3, "E_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

    .line 33
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/4 v1, 0x5

    const/4 v2, -0x5

    const-string v3, "E_DELNOTFOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_DELNOTFOUND:Lcom/singleblur/faceapi/model/ResultCode;

    .line 39
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/4 v1, 0x6

    const/4 v2, -0x6

    const-string v3, "E_INVALID_PIXEL_FORMAT"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_PIXEL_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

    .line 44
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/4 v1, 0x7

    const/4 v2, -0x7

    const-string v3, "E_FILE_NOT_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_FILE_NOT_FOUND:Lcom/singleblur/faceapi/model/ResultCode;

    .line 49
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0x8

    const/4 v2, -0x8

    const-string v3, "E_INVALID_FILE_FORMAT"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_FILE_FORMAT:Lcom/singleblur/faceapi/model/ResultCode;

    .line 54
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0x9

    const/16 v2, -0x9

    const-string v3, "E_FILE_EXPIRE"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_FILE_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 59
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0xa

    const/16 v2, -0xd

    const-string v3, "E_INVALID_AUTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_AUTH:Lcom/singleblur/faceapi/model/ResultCode;

    .line 64
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0xb

    const/16 v2, -0xe

    const-string v3, "E_INVALID_APPID"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_INVALID_APPID:Lcom/singleblur/faceapi/model/ResultCode;

    .line 69
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0xc

    const/16 v2, -0xf

    const-string v3, "E_AUTH_EXPIRE"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_AUTH_EXPIRE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 74
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0xd

    const/16 v2, -0x10

    const-string v3, "E_UUID_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_UUID_MISMATCH:Lcom/singleblur/faceapi/model/ResultCode;

    .line 79
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0xe

    const/16 v2, -0x11

    const-string v3, "E_ONLINE_AUTH_CONNECT_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_ONLINE_AUTH_CONNECT_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

    .line 84
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0xf

    const/16 v2, -0x12

    const-string v3, "E_ONLINE_AUTH_TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_ONLINE_AUTH_TIMEOUT:Lcom/singleblur/faceapi/model/ResultCode;

    .line 89
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0x10

    const/16 v2, -0x13

    const-string v3, "E_ONLINE_AUTH_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_ONLINE_AUTH_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

    .line 94
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0x11

    const/16 v2, -0x14

    const-string v3, "E_LICENSE_IS_NOT_ACTIVABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_LICENSE_IS_NOT_ACTIVABLE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 99
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0x12

    const/16 v2, -0x15

    const-string v3, "E_ACTIVE_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_ACTIVE_FAIL:Lcom/singleblur/faceapi/model/ResultCode;

    .line 104
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0x13

    const/16 v2, -0x16

    const-string v3, "E_ACTIVE_CODE_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_ACTIVE_CODE_INVALID:Lcom/singleblur/faceapi/model/ResultCode;

    .line 109
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0x14

    const/16 v2, -0x3e8

    const-string v3, "E_UNSUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_UNSUPPORTED:Lcom/singleblur/faceapi/model/ResultCode;

    .line 114
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0x15

    const/16 v2, -0x3e9

    const-string v3, "E_MISSLICENSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_MISSLICENSE:Lcom/singleblur/faceapi/model/ResultCode;

    .line 119
    new-instance v0, Lcom/singleblur/faceapi/model/ResultCode;

    const/16 v1, 0x16

    const/16 v2, -0x3ea

    const-string v3, "E_MULTI_CALLS"

    invoke-direct {v0, v3, v1, v2}, Lcom/singleblur/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->E_MULTI_CALLS:Lcom/singleblur/faceapi/model/ResultCode;

    .line 3
    invoke-static {}, Lcom/singleblur/faceapi/model/ResultCode;->$values()[Lcom/singleblur/faceapi/model/ResultCode;

    move-result-object v0

    sput-object v0, Lcom/singleblur/faceapi/model/ResultCode;->$VALUES:[Lcom/singleblur/faceapi/model/ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Lcom/singleblur/faceapi/model/ResultCode;->resultCode:I

    return-void
.end method

.method public static getDescription(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_4e

    .line 132
    const-string v0, "invalid active code"

    packed-switch p0, :pswitch_data_58

    packed-switch p0, :pswitch_data_70

    const/4 p0, 0x0

    return-object p0

    .line 134
    :pswitch_d
    const-string p0, "OK"

    return-object p0

    .line 136
    :pswitch_10
    const-string p0, "invalid argument"

    return-object p0

    .line 138
    :pswitch_13
    const-string p0, "handle Error,may be cause by sdk out of date or model file incorrect"

    return-object p0

    .line 140
    :pswitch_16
    const-string p0, "out of memory"

    return-object p0

    .line 142
    :pswitch_19
    const-string p0, "run in fail inside"

    return-object p0

    .line 144
    :pswitch_1c
    const-string p0, "define not found"

    return-object p0

    .line 146
    :pswitch_1f
    const-string p0, "invalid pixel format"

    return-object p0

    .line 148
    :pswitch_22
    const-string p0, "file no found"

    return-object p0

    .line 150
    :pswitch_25
    const-string p0, "model format error"

    return-object p0

    .line 152
    :pswitch_28
    const-string p0, "model out of date"

    return-object p0

    .line 154
    :pswitch_2b
    const-string p0, "invalid license"

    return-object p0

    .line 156
    :pswitch_2e
    const-string p0, "invalid appid"

    return-object p0

    .line 158
    :pswitch_31
    const-string p0, "date expired"

    return-object p0

    .line 160
    :pswitch_34
    const-string p0, "uuid mismatch"

    return-object p0

    .line 162
    :pswitch_37
    const-string p0, "online auth connect fail"

    return-object p0

    .line 164
    :pswitch_3a
    const-string p0, "check online timeout"

    return-object p0

    .line 166
    :pswitch_3d
    const-string p0, "check online fail"

    return-object p0

    :pswitch_40
    return-object v0

    .line 170
    :pswitch_41
    const-string p0, "license active failed"

    return-object p0

    :pswitch_44
    return-object v0

    .line 174
    :pswitch_45
    const-string p0, "unsupport function called"

    return-object p0

    .line 176
    :pswitch_48
    const-string p0, "con\'t find license"

    return-object p0

    .line 178
    :pswitch_4b
    const-string p0, "multi calls init license"

    return-object p0

    :pswitch_data_4e
    .packed-switch -0x3ea
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch

    :pswitch_data_58
    .packed-switch -0x16
        :pswitch_44
        :pswitch_41
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
    .end packed-switch

    :pswitch_data_70
    .packed-switch -0x9
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/ResultCode;
    .registers 2

    .line 3
    const-class v0, Lcom/singleblur/faceapi/model/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/ResultCode;
    .registers 1

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/ResultCode;->$VALUES:[Lcom/singleblur/faceapi/model/ResultCode;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/ResultCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 128
    iget p0, p0, Lcom/singleblur/faceapi/model/ResultCode;->resultCode:I

    return p0
.end method
