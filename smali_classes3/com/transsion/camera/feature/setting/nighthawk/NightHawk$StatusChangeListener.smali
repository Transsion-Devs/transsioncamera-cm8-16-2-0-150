.class Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/feature/setting/nighthawk/NightHawk-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 85
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 89
    invoke-static {}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_video_quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_6c

    .line 92
    :cond_2c
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->-$$Nest$fgetmIsModeFeatureSupport(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 93
    const-string p1, "8"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "8_60"

    .line 94
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "11"

    .line 95
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "6_60"

    .line 96
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_5f

    .line 100
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->-$$Nest$misSettingSupport(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->-$$Nest$fputmIsSettingSupport(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Z)V

    return-void

    .line 97
    :cond_5f
    :goto_5f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->-$$Nest$fputmIsSettingSupport(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Z)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method
