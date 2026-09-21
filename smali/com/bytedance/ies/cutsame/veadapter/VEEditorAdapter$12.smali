.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->seekDonePlay(IZLcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

.field final synthetic val$autoPlay:Z

.field final synthetic val$callback:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;Z)V
    .registers 4

    .line 2652
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;->val$callback:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    iput-boolean p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;->val$autoPlay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekDone(I)V
    .registers 3

    .line 2655
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;->val$callback:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    if-eqz v0, :cond_7

    .line 2656
    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;->onSeekDone(I)V

    :cond_7
    if-nez p1, :cond_13

    .line 2658
    iget-boolean p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;->val$autoPlay:Z

    if-eqz p1, :cond_13

    .line 2659
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->play()V

    return-void

    .line 2661
    :cond_13
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$12;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;->pause()V

    return-void
.end method
