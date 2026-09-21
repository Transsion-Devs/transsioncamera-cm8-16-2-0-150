.class public final enum Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/TEVideoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

.field public static final enum U:Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

.field public static final enum V:Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

.field public static final enum Y:Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

.field public static final enum YUV:Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 300
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    const-string v1, "YUV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->YUV:Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    .line 301
    new-instance v1, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    const-string v2, "Y"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->Y:Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    .line 302
    new-instance v2, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    const-string v3, "U"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->U:Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    .line 303
    new-instance v3, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    const-string v4, "V"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->V:Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    .line 299
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->$VALUES:[Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 307
    iput p3, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;
    .registers 2

    .line 299
    const-class v0, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;
    .registers 1

    .line 299
    sget-object v0, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->$VALUES:[Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 310
    iget p0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->value:I

    return p0
.end method
