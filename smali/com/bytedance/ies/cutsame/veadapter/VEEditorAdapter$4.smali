.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$4;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilterIndex(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    .line 218
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$4;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0, p1, p3, p2}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->filterIndexOfSegment(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getVideoClipIndex(Ljava/lang/String;)I
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$4;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->indexMapper:Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->access$400(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;)Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/VEIndexMapper;->getVideoSegmentClipIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
