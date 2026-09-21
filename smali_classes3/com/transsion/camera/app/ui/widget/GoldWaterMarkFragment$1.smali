.class Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$1;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 118
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 119
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_4e

    goto :goto_37

    :sswitch_17
    const-string v0, "key_gold_watermark_normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_37

    :cond_20
    const/4 v2, 0x2

    goto :goto_37

    :sswitch_22
    const-string v0, "key_gold_watermark_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_37

    :cond_2b
    move v2, v1

    goto :goto_37

    :sswitch_2d
    const-string v0, "key_gold_watermark_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    packed-switch v2, :pswitch_data_5c

    goto :goto_4c

    .line 121
    :pswitch_3b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$1;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$mclickNormalButton(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Z)V

    goto :goto_4c

    .line 124
    :pswitch_41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$1;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$mclickTimeButton(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Z)V

    goto :goto_4c

    .line 127
    :pswitch_47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$1;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$mclickLocationButton(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Z)V

    :goto_4c
    return v1

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x7f1b0671 -> :sswitch_2d
        -0x60195659 -> :sswitch_22
        0x36fcc541 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_47
        :pswitch_41
        :pswitch_3b
    .end packed-switch
.end method
