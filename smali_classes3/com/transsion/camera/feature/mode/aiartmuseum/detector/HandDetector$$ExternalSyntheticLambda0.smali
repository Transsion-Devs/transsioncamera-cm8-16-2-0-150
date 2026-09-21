.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;->$r8$lambda$YTRKgX6v5gkF63E9nckNKnhOZLE(Lcom/transsion/camera/feature/mode/aiartmuseum/detector/HandDetector;Landroid/graphics/Bitmap;)V

    return-void
.end method
