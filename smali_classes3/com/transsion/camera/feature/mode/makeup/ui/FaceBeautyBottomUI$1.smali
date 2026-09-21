.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 34
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 37
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    const-string v0, "key_gender_attribute_value"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 39
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->-$$Nest$fgetmSlimBodyRoot(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;)Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 40
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->-$$Nest$fgetmSlimBodyRoot(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;)Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->setGender(Ljava/lang/String;)V

    .line 42
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->-$$Nest$fgetmFaceBeautyExRoot(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->-$$Nest$fgetmFaceBeautyExRoot(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->setGender(Ljava/lang/String;)V

    .line 45
    :cond_4a
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGenderValue(Ljava/lang/String;)V

    :cond_51
    return-void
.end method
