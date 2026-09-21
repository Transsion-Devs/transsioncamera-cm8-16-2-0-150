.class Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurStatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field featureKey:Ljava/lang/String;

.field lastFeatureValue:Ljava/lang/String;

.field restoreSettingsBegin:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->lastFeatureValue:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->featureKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->restoreSettingsBegin:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 137
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "key_portrait_flare"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_14a

    goto :goto_39

    :sswitch_10
    const-string v0, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_39

    :cond_19
    const/4 v4, 0x3

    goto :goto_39

    :sswitch_1b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_39

    :cond_22
    const/4 v4, 0x2

    goto :goto_39

    :sswitch_24
    const-string v0, "key_mu_monomer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_39

    :cond_2d
    move v4, v2

    goto :goto_39

    :sswitch_2f
    const-string v0, "key_mu_stereo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_39

    :cond_38
    move v4, v3

    :goto_39
    const-string v0, "key_mu_stereo_feature"

    const-string v5, "key_mu_monomer_feature"

    const-string v6, ", ,value :"

    packed-switch v4, :pswitch_data_15c

    goto :goto_88

    .line 146
    :pswitch_43
    const-string v4, "begin"

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 147
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->restoreSettingsBegin:Z

    goto :goto_88

    .line 149
    :cond_4e
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->restoreSettingsBegin:Z

    goto :goto_88

    .line 159
    :pswitch_51
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->featureKey:Ljava/lang/String;

    .line 160
    sput-boolean v3, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->isPressBack:Z

    .line 161
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    iget-object v4, v4, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onStatusChanged] KEY_PORTRAIT_FLARE, mLensFacing :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    iget-object v8, v8, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    const-string v7, "on"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v4, p1, v7}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->onConflictSettingChanged(Ljava/lang/String;Z)V

    goto :goto_88

    .line 156
    :pswitch_83
    iput-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->featureKey:Ljava/lang/String;

    goto :goto_88

    .line 153
    :pswitch_86
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->featureKey:Ljava/lang/String;

    .line 168
    :goto_88
    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->restoreSettingsBegin:Z

    if-eqz v4, :cond_8e

    goto/16 :goto_142

    .line 172
    :cond_8e
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->featureKey:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->featureKey:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 173
    :cond_9e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->featureKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v5, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->lastFeatureValue:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v0, v1, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c0

    goto :goto_c1

    :cond_c0
    move-object v0, v5

    .line 180
    :goto_c1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onStatusChanged]:  ,mLensFacing :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    iget-object v7, v7, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,key :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,lastFeatureValue :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->lastFeatureValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,flareValue :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->lastFeatureValue:Ljava/lang/String;

    const-string v4, "f0.0"

    if-nez v1, :cond_11c

    .line 184
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_116

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_110

    goto :goto_116

    .line 187
    :cond_110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->onConflictSettingChanged(Ljava/lang/String;Z)V

    return-void

    .line 185
    :cond_116
    :goto_116
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->onConflictSettingChanged(Ljava/lang/String;Z)V

    return-void

    .line 192
    :cond_11c
    const-string v6, "\\+"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 193
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_143

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_131

    goto :goto_143

    .line 195
    :cond_131
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_142

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_142

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->onConflictSettingChanged(Ljava/lang/String;Z)V

    :cond_142
    :goto_142
    return-void

    .line 194
    :cond_143
    :goto_143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot$BlurStatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->onConflictSettingChanged(Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_14a
    .sparse-switch
        -0x37803771 -> :sswitch_2f
        0x2093e60 -> :sswitch_24
        0x452e140a -> :sswitch_1b
        0x60ee855f -> :sswitch_10
    .end sparse-switch

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_86
        :pswitch_83
        :pswitch_51
        :pswitch_43
    .end packed-switch
.end method
