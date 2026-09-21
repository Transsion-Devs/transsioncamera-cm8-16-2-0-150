.class Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmileDetSettingCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;-><init>(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 3

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;

    const-string p1, "1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->-$$Nest$fputmIsTackPicture(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;Z)V

    return-void
.end method
