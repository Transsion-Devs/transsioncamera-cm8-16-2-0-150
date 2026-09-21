.class public final enum Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/MediaPipeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum ABORTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum ALREADY_EXISTS:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum CANCELLED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum DATA_LOSS:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum DEADLINE_EXCEEDED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum INTERNAL:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum INVALID_ARGUMENT:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum IO_EXCEPTION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum NOT_FOUND:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum OK:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum OUT_OF_RANGE:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum PERMISSION_DENIED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum RESOURCE_EXHAUSTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum UNAUTHENTICATED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum UNAVAILABLE:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum UNIMPLEMENTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum UNKNOWN:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 45
    new-instance v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/4 v0, 0x0

    const-string v2, "ok"

    const-string v3, "OK"

    invoke-direct {v1, v3, v0, v2}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->OK:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 46
    new-instance v2, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/4 v0, 0x1

    const-string v3, "canceled"

    const-string v4, "CANCELLED"

    invoke-direct {v2, v4, v0, v3}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->CANCELLED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 47
    new-instance v3, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/4 v0, 0x2

    const-string v4, "unknown"

    const-string v5, "UNKNOWN"

    invoke-direct {v3, v5, v0, v4}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->UNKNOWN:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 48
    new-instance v4, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/4 v0, 0x3

    const-string v5, "invalid argument"

    const-string v6, "INVALID_ARGUMENT"

    invoke-direct {v4, v6, v0, v5}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INVALID_ARGUMENT:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 49
    new-instance v5, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/4 v0, 0x4

    const-string v6, "deadline exceeded"

    const-string v7, "DEADLINE_EXCEEDED"

    invoke-direct {v5, v7, v0, v6}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->DEADLINE_EXCEEDED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 50
    new-instance v6, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/4 v0, 0x5

    const-string v7, "not found"

    const-string v8, "NOT_FOUND"

    invoke-direct {v6, v8, v0, v7}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->NOT_FOUND:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 51
    new-instance v7, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/4 v0, 0x6

    const-string v8, "already exists"

    const-string v9, "ALREADY_EXISTS"

    invoke-direct {v7, v9, v0, v8}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ALREADY_EXISTS:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 52
    new-instance v8, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/4 v0, 0x7

    const-string v9, "permission denied"

    const-string v10, "PERMISSION_DENIED"

    invoke-direct {v8, v10, v0, v9}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->PERMISSION_DENIED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 53
    new-instance v9, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v0, 0x8

    const-string v10, "resource exhausted"

    const-string v11, "RESOURCE_EXHAUSTED"

    invoke-direct {v9, v11, v0, v10}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->RESOURCE_EXHAUSTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 54
    new-instance v10, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v0, 0x9

    const-string v11, "failed precondition"

    const-string v12, "FAILED_PRECONDITION"

    invoke-direct {v10, v12, v0, v11}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 55
    new-instance v11, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v0, 0xa

    const-string v12, "aborted"

    const-string v13, "ABORTED"

    invoke-direct {v11, v13, v0, v12}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ABORTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 56
    new-instance v12, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v0, 0xb

    const-string v13, "out of range"

    const-string v14, "OUT_OF_RANGE"

    invoke-direct {v12, v14, v0, v13}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->OUT_OF_RANGE:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 57
    new-instance v13, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v0, 0xc

    const-string v14, "unimplemented"

    const-string v15, "UNIMPLEMENTED"

    invoke-direct {v13, v15, v0, v14}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->UNIMPLEMENTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 58
    new-instance v14, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v0, 0xd

    const-string v15, "internal"

    move-object/from16 v16, v1

    const-string v1, "INTERNAL"

    invoke-direct {v14, v1, v0, v15}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INTERNAL:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 59
    new-instance v15, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v0, 0xe

    const-string v1, "unavailable"

    move-object/from16 v17, v2

    const-string v2, "UNAVAILABLE"

    invoke-direct {v15, v2, v0, v1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->UNAVAILABLE:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 60
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v1, 0xf

    const-string v2, "data loss"

    move-object/from16 v18, v3

    const-string v3, "DATA_LOSS"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->DATA_LOSS:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 61
    new-instance v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v2, 0x10

    const-string v3, "unauthenticated"

    move-object/from16 v19, v0

    const-string v0, "UNAUTHENTICATED"

    invoke-direct {v1, v0, v2, v3}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->UNAUTHENTICATED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 62
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    const/16 v2, 0x11

    const-string v3, "i/o exception"

    move-object/from16 v20, v1

    const-string v1, "IO_EXCEPTION"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->IO_EXCEPTION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v0

    .line 44
    filled-new-array/range {v1 .. v18}, [Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->$VALUES:[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;
    .registers 2

    .line 44
    const-class v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;
    .registers 1

    .line 44
    sget-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->$VALUES:[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    invoke-virtual {v0}, [Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    return-object v0
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->description:Ljava/lang/String;

    return-object p0
.end method
