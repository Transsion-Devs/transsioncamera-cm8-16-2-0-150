.class Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->setUpView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$1;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .registers 5

    .line 146
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$1;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmProWMPreview(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Lcom/transsion/camera/app/ui/widget/ProWMPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreview;->updateSelectedStyle(I)V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$1;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmProWMPreviewInfo(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getStyleValue()Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$1;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_3a

    .line 150
    const-string v0, "key_pro_watermark_type"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method
