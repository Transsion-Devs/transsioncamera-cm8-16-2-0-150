.class public final enum Lcom/tetras/hand/model/ResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tetras/hand/model/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tetras/hand/model/ResultCode;

.field private static final DESCRIPTION_E_ACTIVE_CODE_INVALID:Ljava/lang/String; = "invalid active code"

.field private static final DESCRIPTION_E_ACTIVE_FAIL:Ljava/lang/String; = "license active failed"

.field private static final DESCRIPTION_E_AUTH_EXPIRE:Ljava/lang/String; = "E_AUTH_EXPIRE"

.field private static final DESCRIPTION_E_DELNOTFOUND:Ljava/lang/String; = "define not found"

.field private static final DESCRIPTION_E_FAIL:Ljava/lang/String; = "run in fail inside"

.field private static final DESCRIPTION_E_FILE_EXPIRE:Ljava/lang/String; = "model out of date"

.field private static final DESCRIPTION_E_FILE_NOT_FOUND:Ljava/lang/String; = "file no found"

.field private static final DESCRIPTION_E_HANDLE:Ljava/lang/String; = "handle Error,may be cause by sdk out of date or model file incorrect"

.field private static final DESCRIPTION_E_INVALIDARG:Ljava/lang/String; = "invalid argument"

.field private static final DESCRIPTION_E_INVALID_APPID:Ljava/lang/String; = "E_INVALID_APPID"

.field private static final DESCRIPTION_E_INVALID_AUTH:Ljava/lang/String; = "invalid license"

.field private static final DESCRIPTION_E_INVALID_FILE_FORMAT:Ljava/lang/String; = "model format error"

.field private static final DESCRIPTION_E_INVALID_PIXEL_FORMAT:Ljava/lang/String; = "invalid pixel format"

.field private static final DESCRIPTION_E_LICENSE_IS_NOT_ACTIVABLE:Ljava/lang/String; = "invalid active code"

.field private static final DESCRIPTION_E_ONLINE_AUTH_CONNECT_FAIL:Ljava/lang/String; = "online auth connect fail"

.field private static final DESCRIPTION_E_ONLINE_AUTH_INVALID:Ljava/lang/String; = "check online fail"

.field private static final DESCRIPTION_E_ONLINE_AUTH_TIMEOUT:Ljava/lang/String; = "check online timeout"

.field private static final DESCRIPTION_E_OUTOFMEMORY:Ljava/lang/String; = "out of memory"

.field private static final DESCRIPTION_E_UNSUPPORTED:Ljava/lang/String; = "unsupport function called"

.field private static final DESCRIPTION_E_UUID_MISMATCH:Ljava/lang/String; = "E_UUID_MISMATCH"

.field private static final DESCRIPTION_OK:Ljava/lang/String; = "OK"

.field public static final enum E_ACTIVE_CODE_INVALID:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_ACTIVE_FAIL:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_AUTH_EXPIRE:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_DELNOTFOUND:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_FAIL:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_FILE_EXPIRE:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_FILE_NOT_FOUND:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_HANDLE:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_INVALIDARG:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_INVALID_APPID:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_INVALID_AUTH:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_INVALID_FILE_FORMAT:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_INVALID_PIXEL_FORMAT:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_LICENSE_IS_NOT_ACTIVABLE:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_ONLINE_AUTH_CONNECT_FAIL:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_ONLINE_AUTH_INVALID:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_ONLINE_AUTH_TIMEOUT:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_OUTOFMEMORY:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_UNSUPPORTED:Lcom/tetras/hand/model/ResultCode;

.field public static final enum E_UUID_MISMATCH:Lcom/tetras/hand/model/ResultCode;

.field public static final enum OK:Lcom/tetras/hand/model/ResultCode;


# instance fields
.field private final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 7
    new-instance v1, Lcom/tetras/hand/model/ResultCode;

    const-string v0, "OK"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tetras/hand/model/ResultCode;->OK:Lcom/tetras/hand/model/ResultCode;

    .line 12
    new-instance v2, Lcom/tetras/hand/model/ResultCode;

    const/4 v0, 0x1

    const/4 v3, -0x1

    const-string v4, "E_INVALIDARG"

    invoke-direct {v2, v4, v0, v3}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tetras/hand/model/ResultCode;->E_INVALIDARG:Lcom/tetras/hand/model/ResultCode;

    .line 17
    new-instance v3, Lcom/tetras/hand/model/ResultCode;

    const/4 v0, 0x2

    const/4 v4, -0x2

    const-string v5, "E_HANDLE"

    invoke-direct {v3, v5, v0, v4}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tetras/hand/model/ResultCode;->E_HANDLE:Lcom/tetras/hand/model/ResultCode;

    .line 22
    new-instance v4, Lcom/tetras/hand/model/ResultCode;

    const/4 v0, 0x3

    const/4 v5, -0x3

    const-string v6, "E_OUTOFMEMORY"

    invoke-direct {v4, v6, v0, v5}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tetras/hand/model/ResultCode;->E_OUTOFMEMORY:Lcom/tetras/hand/model/ResultCode;

    .line 27
    new-instance v5, Lcom/tetras/hand/model/ResultCode;

    const/4 v0, 0x4

    const/4 v6, -0x4

    const-string v7, "E_FAIL"

    invoke-direct {v5, v7, v0, v6}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tetras/hand/model/ResultCode;->E_FAIL:Lcom/tetras/hand/model/ResultCode;

    .line 32
    new-instance v6, Lcom/tetras/hand/model/ResultCode;

    const/4 v0, 0x5

    const/4 v7, -0x5

    const-string v8, "E_DELNOTFOUND"

    invoke-direct {v6, v8, v0, v7}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tetras/hand/model/ResultCode;->E_DELNOTFOUND:Lcom/tetras/hand/model/ResultCode;

    .line 38
    new-instance v7, Lcom/tetras/hand/model/ResultCode;

    const/4 v0, 0x6

    const/4 v8, -0x6

    const-string v9, "E_INVALID_PIXEL_FORMAT"

    invoke-direct {v7, v9, v0, v8}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tetras/hand/model/ResultCode;->E_INVALID_PIXEL_FORMAT:Lcom/tetras/hand/model/ResultCode;

    .line 43
    new-instance v8, Lcom/tetras/hand/model/ResultCode;

    const/4 v0, 0x7

    const/4 v9, -0x7

    const-string v10, "E_FILE_NOT_FOUND"

    invoke-direct {v8, v10, v0, v9}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tetras/hand/model/ResultCode;->E_FILE_NOT_FOUND:Lcom/tetras/hand/model/ResultCode;

    .line 48
    new-instance v9, Lcom/tetras/hand/model/ResultCode;

    const/16 v0, 0x8

    const/4 v10, -0x8

    const-string v11, "E_INVALID_FILE_FORMAT"

    invoke-direct {v9, v11, v0, v10}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tetras/hand/model/ResultCode;->E_INVALID_FILE_FORMAT:Lcom/tetras/hand/model/ResultCode;

    .line 53
    new-instance v10, Lcom/tetras/hand/model/ResultCode;

    const/16 v0, 0x9

    const/16 v11, -0x9

    const-string v12, "E_FILE_EXPIRE"

    invoke-direct {v10, v12, v0, v11}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tetras/hand/model/ResultCode;->E_FILE_EXPIRE:Lcom/tetras/hand/model/ResultCode;

    .line 58
    new-instance v11, Lcom/tetras/hand/model/ResultCode;

    const/16 v0, 0xa

    const/16 v12, -0xd

    const-string v13, "E_INVALID_AUTH"

    invoke-direct {v11, v13, v0, v12}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tetras/hand/model/ResultCode;->E_INVALID_AUTH:Lcom/tetras/hand/model/ResultCode;

    .line 63
    new-instance v12, Lcom/tetras/hand/model/ResultCode;

    const/16 v0, 0xb

    const/16 v13, -0xe

    const-string v14, "E_INVALID_APPID"

    invoke-direct {v12, v14, v0, v13}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tetras/hand/model/ResultCode;->E_INVALID_APPID:Lcom/tetras/hand/model/ResultCode;

    .line 68
    new-instance v13, Lcom/tetras/hand/model/ResultCode;

    const/16 v0, 0xc

    const/16 v14, -0xf

    const-string v15, "E_AUTH_EXPIRE"

    invoke-direct {v13, v15, v0, v14}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/tetras/hand/model/ResultCode;->E_AUTH_EXPIRE:Lcom/tetras/hand/model/ResultCode;

    .line 73
    new-instance v14, Lcom/tetras/hand/model/ResultCode;

    const/16 v0, 0xd

    const/16 v15, -0x10

    move-object/from16 v16, v1

    const-string v1, "E_UUID_MISMATCH"

    invoke-direct {v14, v1, v0, v15}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/tetras/hand/model/ResultCode;->E_UUID_MISMATCH:Lcom/tetras/hand/model/ResultCode;

    .line 78
    new-instance v15, Lcom/tetras/hand/model/ResultCode;

    const/16 v0, 0xe

    const/16 v1, -0x11

    move-object/from16 v17, v2

    const-string v2, "E_ONLINE_AUTH_CONNECT_FAIL"

    invoke-direct {v15, v2, v0, v1}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/tetras/hand/model/ResultCode;->E_ONLINE_AUTH_CONNECT_FAIL:Lcom/tetras/hand/model/ResultCode;

    .line 83
    new-instance v0, Lcom/tetras/hand/model/ResultCode;

    const/16 v1, 0xf

    const/16 v2, -0x12

    move-object/from16 v18, v3

    const-string v3, "E_ONLINE_AUTH_TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tetras/hand/model/ResultCode;->E_ONLINE_AUTH_TIMEOUT:Lcom/tetras/hand/model/ResultCode;

    .line 88
    new-instance v1, Lcom/tetras/hand/model/ResultCode;

    const/16 v2, 0x10

    const/16 v3, -0x13

    move-object/from16 v19, v0

    const-string v0, "E_ONLINE_AUTH_INVALID"

    invoke-direct {v1, v0, v2, v3}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tetras/hand/model/ResultCode;->E_ONLINE_AUTH_INVALID:Lcom/tetras/hand/model/ResultCode;

    .line 93
    new-instance v0, Lcom/tetras/hand/model/ResultCode;

    const/16 v2, 0x11

    const/16 v3, -0x14

    move-object/from16 v20, v1

    const-string v1, "E_LICENSE_IS_NOT_ACTIVABLE"

    invoke-direct {v0, v1, v2, v3}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tetras/hand/model/ResultCode;->E_LICENSE_IS_NOT_ACTIVABLE:Lcom/tetras/hand/model/ResultCode;

    .line 98
    new-instance v1, Lcom/tetras/hand/model/ResultCode;

    const/16 v2, 0x12

    const/16 v3, -0x15

    move-object/from16 v21, v0

    const-string v0, "E_ACTIVE_FAIL"

    invoke-direct {v1, v0, v2, v3}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tetras/hand/model/ResultCode;->E_ACTIVE_FAIL:Lcom/tetras/hand/model/ResultCode;

    .line 103
    new-instance v0, Lcom/tetras/hand/model/ResultCode;

    const/16 v2, 0x13

    const/16 v3, -0x16

    move-object/from16 v22, v1

    const-string v1, "E_ACTIVE_CODE_INVALID"

    invoke-direct {v0, v1, v2, v3}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tetras/hand/model/ResultCode;->E_ACTIVE_CODE_INVALID:Lcom/tetras/hand/model/ResultCode;

    .line 108
    new-instance v1, Lcom/tetras/hand/model/ResultCode;

    const/16 v2, 0x14

    const/16 v3, -0x3e8

    move-object/from16 v23, v0

    const-string v0, "E_UNSUPPORTED"

    invoke-direct {v1, v0, v2, v3}, Lcom/tetras/hand/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tetras/hand/model/ResultCode;->E_UNSUPPORTED:Lcom/tetras/hand/model/ResultCode;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v22

    .line 3
    filled-new-array/range {v1 .. v21}, [Lcom/tetras/hand/model/ResultCode;

    move-result-object v0

    sput-object v0, Lcom/tetras/hand/model/ResultCode;->$VALUES:[Lcom/tetras/hand/model/ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/tetras/hand/model/ResultCode;->resultCode:I

    return-void
.end method

.method public static getDescription(I)Ljava/lang/String;
    .registers 2

    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_46

    .line 125
    const-string v0, "invalid active code"

    packed-switch p0, :pswitch_data_4a

    packed-switch p0, :pswitch_data_62

    const/4 p0, 0x0

    return-object p0

    .line 127
    :pswitch_e
    const-string p0, "OK"

    return-object p0

    .line 129
    :pswitch_11
    const-string p0, "invalid argument"

    return-object p0

    .line 131
    :pswitch_14
    const-string p0, "handle Error,may be cause by sdk out of date or model file incorrect"

    return-object p0

    .line 133
    :pswitch_17
    const-string p0, "out of memory"

    return-object p0

    .line 135
    :pswitch_1a
    const-string p0, "run in fail inside"

    return-object p0

    .line 137
    :pswitch_1d
    const-string p0, "define not found"

    return-object p0

    .line 139
    :pswitch_20
    const-string p0, "invalid pixel format"

    return-object p0

    .line 141
    :pswitch_23
    const-string p0, "file no found"

    return-object p0

    .line 143
    :pswitch_26
    const-string p0, "model format error"

    return-object p0

    .line 145
    :pswitch_29
    const-string p0, "model out of date"

    return-object p0

    .line 147
    :pswitch_2c
    const-string p0, "invalid license"

    return-object p0

    .line 149
    :pswitch_2f
    const-string p0, "E_INVALID_APPID"

    return-object p0

    .line 151
    :pswitch_32
    const-string p0, "E_AUTH_EXPIRE"

    return-object p0

    .line 153
    :pswitch_35
    const-string p0, "E_UUID_MISMATCH"

    return-object p0

    .line 155
    :pswitch_38
    const-string p0, "online auth connect fail"

    return-object p0

    .line 157
    :pswitch_3b
    const-string p0, "check online timeout"

    return-object p0

    .line 159
    :pswitch_3e
    const-string p0, "check online fail"

    return-object p0

    :pswitch_41
    return-object v0

    .line 163
    :pswitch_42
    const-string p0, "license active failed"

    return-object p0

    :pswitch_45
    return-object v0

    .line 167
    :cond_46
    const-string/jumbo p0, "unsupport function called"

    return-object p0

    :pswitch_data_4a
    .packed-switch -0x16
        :pswitch_45
        :pswitch_42
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
    .end packed-switch

    :pswitch_data_62
    .packed-switch -0x9
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tetras/hand/model/ResultCode;
    .registers 2

    .line 3
    const-class v0, Lcom/tetras/hand/model/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tetras/hand/model/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/tetras/hand/model/ResultCode;
    .registers 1

    .line 3
    sget-object v0, Lcom/tetras/hand/model/ResultCode;->$VALUES:[Lcom/tetras/hand/model/ResultCode;

    invoke-virtual {v0}, [Lcom/tetras/hand/model/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tetras/hand/model/ResultCode;

    return-object v0
.end method


# virtual methods
.method public getResultCode()I
    .registers 1

    .line 121
    iget p0, p0, Lcom/tetras/hand/model/ResultCode;->resultCode:I

    return p0
.end method
