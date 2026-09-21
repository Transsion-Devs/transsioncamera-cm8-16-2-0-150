.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VECommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->setOnErrorListener(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

.field final synthetic val$callBackHandler:J


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;J)V
    .registers 4

    .line 534
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$8;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    iput-wide p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$8;->val$callBackHandler:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .registers 12

    .line 537
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$8;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$8;->val$callBackHandler:J

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->onCommonCallback(JIIFLjava/lang/String;)V

    return-void
.end method
