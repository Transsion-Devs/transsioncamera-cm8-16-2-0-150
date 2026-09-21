.class Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEGetImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getImages([IIILcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$GET_FRAMES_FLAGS;Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$VEGetImageListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

.field final synthetic val$listener:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$VEGetImageListener;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$VEGetImageListener;)V
    .registers 3

    .line 1907
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$5;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$5;->val$listener:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$VEGetImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetImageData([BIIIF)I
    .registers 6

    .line 1910
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$5;->val$listener:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$VEGetImageListener;

    invoke-interface/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$VEGetImageListener;->onGetImageData([BIIIF)I

    move-result p0

    return p0
.end method
