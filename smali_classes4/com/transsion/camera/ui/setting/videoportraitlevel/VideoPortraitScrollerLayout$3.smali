.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)V
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 347
    invoke-static {}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "durationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$fgetmVideoPortraitSetting(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$fgetmVideoPortraitSetting(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$mopenPortraitBySeekBar(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;Ljava/lang/String;)V

    .line 353
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$fgetmPortraitIcon(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$fputmCurrentValue(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;Ljava/lang/String;)V

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$fgetmVideoPortraitSetting(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_67
    return-void
.end method
