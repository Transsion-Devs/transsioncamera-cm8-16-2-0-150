.class Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpGuideFlag()Z
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x1

    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 108
    const-string v2, "key_vlog_guide_show_flag"

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getHelpGuideShowTimes()I
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 80
    const-string v1, "key_vlog_segment_guide_time"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIndicatorIndex()I
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 102
    const-string v1, "key_indicator_index"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTempDetailTag()Ljava/lang/String;
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 91
    const-string v1, "key_vlog_temp_detail_tag"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTemplateIndex()I
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$mgetStoreScope(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_template_index"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTemplateOffset()I
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$mgetStoreScope(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_template_offset"

    const-string v2, "48"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTemplatePosition()I
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$mgetStoreScope(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_template_position"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVideoGuideVolume()Z
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$mgetStoreScope(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_video_guide_volume"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public storeHelpGuideShowTimes(I)V
    .registers 5

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "key_vlog_segment_guide_time"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public storeIndicatorIndex(I)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "key_indicator_index"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public storeTempDetailTag(Ljava/lang/String;)V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "key_vlog_temp_detail_tag"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public storeTemplateIndex(I)V
    .registers 5

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$mgetStoreScope(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "key_template_index"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public storeTemplateOffset(I)V
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$mgetStoreScope(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "key_template_offset"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public storeTemplatePosition(I)V
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$mgetStoreScope(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "key_template_position"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public storeVideoGuideVolume(Z)V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$mgetStoreScope(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "key_video_guide_volume"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateHelpGuideFlag()V
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 115
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    .line 114
    const-string v3, "key_vlog_guide_show_flag"

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
