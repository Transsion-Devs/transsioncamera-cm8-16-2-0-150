.class Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperNightLiteCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 2

    .line 1103
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 4

    .line 1107
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmShutterTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;I)V

    .line 1108
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmShutterTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I

    move-result p2

    div-int/lit8 p2, p2, 0x64

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 p2, p2, 0x64

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmShutterTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;I)V

    .line 1109
    sget-object p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " the shutter time is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$SuperNightLiteCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmShutterTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
