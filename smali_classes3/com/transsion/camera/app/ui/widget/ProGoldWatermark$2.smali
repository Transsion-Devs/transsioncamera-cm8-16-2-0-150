.class Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;
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

    .line 512
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationReceived(Landroid/location/Location;)V
    .registers 5

    .line 515
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLocationReceived]: location: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$mshouldShowLocationText(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_86

    :cond_26
    if-eqz p1, :cond_49

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$msaveLocationGson(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Landroid/location/Location;)V

    .line 521
    invoke-static {p1}, Lcom/transsion/camera/utils/LocationUtil;->getAccurateLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 523
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fputmLocationInfoStr(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$msendLocationShowDelay(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;I)V

    .line 526
    :cond_43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$mwhileGetCityInfoFromLocation(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Landroid/location/Location;)V

    return-void

    .line 528
    :cond_49
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$mshouldShowLocationText(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 529
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmLocationInfoStr(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 530
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmCityInfoStr(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_77

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmCityInfoStr(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    .line 531
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_86

    .line 532
    :cond_77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$fgetmSavedLocationGson(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)Landroid/location/Location;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$mwhileGetCityInfoFromLocation(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;Landroid/location/Location;)V

    return-void

    .line 535
    :cond_81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark$2;->this$0:Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;->-$$Nest$msendNotShowLocationInfo(Lcom/transsion/camera/app/ui/widget/ProGoldWatermark;)V

    :cond_86
    :goto_86
    return-void
.end method
