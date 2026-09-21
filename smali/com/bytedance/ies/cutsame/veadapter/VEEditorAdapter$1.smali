.class Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEMonitorListener;


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

    .line 177
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter$1;->this$0:Lcom/bytedance/ies/cutsame/veadapter/VEEditorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public monitorLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VE: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cut.VEEditorAdapter"

    invoke-static {p1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
