.class Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->seekDonePlayF(IZLkotlin/jvm/functions/Function1;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

.field final synthetic val$callback:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 1650
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$3;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$3;->val$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekDone(I)V
    .registers 2

    .line 1653
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$3;->val$callback:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_b

    .line 1654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method
