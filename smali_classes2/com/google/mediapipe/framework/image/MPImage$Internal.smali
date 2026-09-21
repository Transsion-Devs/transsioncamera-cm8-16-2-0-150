.class final Lcom/google/mediapipe/framework/image/MPImage$Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/image/MPImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Internal"
.end annotation


# instance fields
.field private final image:Lcom/google/mediapipe/framework/image/MPImage;


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/framework/image/MPImage;)V
    .registers 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/mediapipe/framework/image/MPImage$Internal;->image:Lcom/google/mediapipe/framework/image/MPImage;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/framework/image/MPImage$1;)V
    .registers 3

    .line 155
    invoke-direct {p0, p1}, Lcom/google/mediapipe/framework/image/MPImage$Internal;-><init>(Lcom/google/mediapipe/framework/image/MPImage;)V

    return-void
.end method


# virtual methods
.method acquire()V
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/google/mediapipe/framework/image/MPImage$Internal;->image:Lcom/google/mediapipe/framework/image/MPImage;

    # invokes: Lcom/google/mediapipe/framework/image/MPImage;->acquire()V
    invoke-static {p0}, Lcom/google/mediapipe/framework/image/MPImage;->access$000(Lcom/google/mediapipe/framework/image/MPImage;)V

    return-void
.end method
