.class Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;I)V
    .registers 3

    .line 289
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iput p2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_shutter_sound_optional"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 294
    const-string p1, "1"

    .line 296
    :cond_24
    iget v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->val$position:I

    .line 298
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 297
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmShutterSoundPaths(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)[Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->val$position:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 299
    const-string v4, "key_shutter_sound_asset_file_name"

    invoke-virtual {p1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    :cond_92
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->this$1:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    iget p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;->val$position:I

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->-$$Nest$mupdateItemViewState(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;I)V

    return-void
.end method
