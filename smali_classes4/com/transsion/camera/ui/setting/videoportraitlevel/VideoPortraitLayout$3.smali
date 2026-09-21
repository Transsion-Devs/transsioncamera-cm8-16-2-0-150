.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .registers 5

    .line 97
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->-$$Nest$fgetmVideoPortraitSetting(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    if-eqz p2, :cond_5f

    .line 98
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->-$$Nest$fgetmVideoPortraitSetting(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p2

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->-$$Nest$fgetmPortraitLevelMap(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 100
    const-string v0, "0"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 101
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->-$$Nest$mopenPortraitBySeekBar(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)V

    .line 103
    :cond_2f
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->-$$Nest$fgetmPortraitIcon(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 104
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->-$$Nest$fputmCurrentValue(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$3;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->-$$Nest$fgetmVideoPortraitSetting(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5f
    return-void
.end method
