.class Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoonDetectionSettingCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 6

    .line 41
    invoke-static {}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataCallback, data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_23

    goto :goto_39

    :cond_23
    if-eqz p2, :cond_2b

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->-$$Nest$mhideMoonAsd(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)V

    return-void

    .line 49
    :cond_2b
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->-$$Nest$fgetmCurrentDate(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)I

    move-result p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_3a

    :goto_39
    return-void

    .line 52
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x34

    if-ne p2, v0, :cond_48

    .line 53
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->-$$Nest$mshowMoonAsd(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)V

    goto :goto_53

    .line 54
    :cond_48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_53

    .line 55
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->-$$Nest$mhideMoonAsd(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;)V

    .line 57
    :cond_53
    :goto_53
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI$MoonDetectionSettingCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;->-$$Nest$fputmCurrentDate(Lcom/transsion/camera/ui/setting/moondetection/MoonDetectionUI;I)V

    return-void
.end method
