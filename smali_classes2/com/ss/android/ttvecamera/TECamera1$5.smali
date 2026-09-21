.class Lcom/ss/android/ttvecamera/TECamera1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECamera1;->switchFlashMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECamera1;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECamera1;I)V
    .registers 3

    .line 1225
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1$5;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iput p2, p0, Lcom/ss/android/ttvecamera/TECamera1$5;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1228
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1$5;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECamera1$5;->val$mode:I

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECamera1;->switchFlashMode(I)V

    return-void
.end method
