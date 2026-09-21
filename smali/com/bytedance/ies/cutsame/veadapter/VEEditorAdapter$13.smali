.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setFirstFrameListener(Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

.field final synthetic val$listener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;)V
    .registers 3

    .line 2765
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$13;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$13;->val$listener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRendered()V
    .registers 1

    .line 2768
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$13;->val$listener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;

    invoke-interface {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;->onRendered()V

    return-void
.end method
