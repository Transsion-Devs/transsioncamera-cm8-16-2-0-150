.class Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 109
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 113
    sget-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_ee

    goto :goto_57

    :sswitch_2c
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_57

    :cond_35
    const/4 v3, 0x3

    goto :goto_57

    :sswitch_37
    const-string v0, "key_video_enhance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_57

    :cond_40
    const/4 v3, 0x2

    goto :goto_57

    :sswitch_42
    const-string v0, "key_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_57

    :cond_4b
    move v3, v1

    goto :goto_57

    :sswitch_4d
    const-string v0, "key_video_quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_57

    :cond_56
    move v3, v2

    .line 156
    :goto_57
    const-string p1, "ai"

    const-string v0, "on"

    packed-switch v3, :pswitch_data_100

    return-void

    .line 125
    :pswitch_5f
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "super"

    .line 126
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 127
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_81

    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    .line 128
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$mnoFeatureForceEnableAntiVideoPlugin(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$fputmSuperAntiVideoPlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V

    return-void

    .line 131
    :cond_81
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$fputmSuperAntiVideoPlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V

    return-void

    .line 147
    :pswitch_87
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$fputmVideoEnhancePlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V

    return-void

    .line 150
    :cond_93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$fputmVideoEnhancePlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V

    return-void

    .line 116
    :pswitch_99
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 117
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ae

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    .line 118
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$mnoFeatureForceEnableAntiVideoPlugin(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)Z

    move-result p1

    if-eqz p1, :cond_ae

    goto :goto_b4

    .line 121
    :cond_ae
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$fputmAntiVideoPlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V

    return-void

    .line 119
    :cond_b4
    :goto_b4
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$fputmAntiVideoPlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V

    return-void

    .line 135
    :pswitch_ba
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$mnoFeatureForceEnablePlugin(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e8

    const-string p1, "8"

    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e2

    const-string p1, "11"

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e2

    const-string p1, "6_60"

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e2

    const-string p1, "8_60"

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e8

    .line 140
    :cond_e2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$fputmVideoQualityPlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V

    return-void

    .line 142
    :cond_e8
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->-$$Nest$fputmVideoQualityPlugInValue(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)V

    return-void

    :sswitch_data_ee
    .sparse-switch
        -0x60d2d0a5 -> :sswitch_4d
        0x17b8ff3e -> :sswitch_42
        0x18ce310a -> :sswitch_37
        0x7ddb1282 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_99
        :pswitch_87
        :pswitch_5f
    .end packed-switch
.end method
