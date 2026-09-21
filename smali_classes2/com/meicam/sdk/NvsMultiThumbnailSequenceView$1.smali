.class Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->requestUpdateThumbnailSequenceGeometry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;


# direct methods
.method constructor <init>(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V
    .registers 2

    .line 792
    iput-object p1, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$1;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 795
    iget-object p0, p0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$1;->this$0:Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;

    # invokes: Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->updateThumbnailSequenceGeometry()V
    invoke-static {p0}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;->access$300(Lcom/meicam/sdk/NvsMultiThumbnailSequenceView;)V

    return-void
.end method
