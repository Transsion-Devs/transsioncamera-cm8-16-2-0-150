.class public final enum Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode$ModeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

.field public static final enum CONVENTIONAL:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

.field public static final CONVENTIONAL_VALUE:I = 0x1

.field public static final enum DEFAULT:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final enum TOP_LEFT:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

.field public static final TOP_LEFT_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 37
    new-instance v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->DEFAULT:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    .line 46
    new-instance v1, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    const-string v2, "CONVENTIONAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->CONVENTIONAL:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    .line 55
    new-instance v2, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    const-string v3, "TOP_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->TOP_LEFT:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    .line 56
    new-instance v3, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->UNRECOGNIZED:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    .line 28
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->$VALUES:[Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    .line 120
    new-instance v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode$1;

    invoke-direct {v0}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode$1;-><init>()V

    sput-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput p3, p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_a
    sget-object p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->TOP_LEFT:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    return-object p0

    .line 109
    :cond_d
    sget-object p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->CONVENTIONAL:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    return-object p0

    .line 108
    :cond_10
    sget-object p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->DEFAULT:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;",
            ">;"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 130
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode$ModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-static {p0}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->forNumber(I)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;
    .registers 2

    .line 28
    const-class v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;
    .registers 1

    .line 28
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->$VALUES:[Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    invoke-virtual {v0}, [Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 89
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->UNRECOGNIZED:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    if-eq p0, v0, :cond_7

    .line 93
    iget p0, p0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->value:I

    return p0

    .line 90
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
