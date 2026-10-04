.class Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModeInit([ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

.field final synthetic val$algos:[I

.field final synthetic val$cameraId:Ljava/lang/String;

.field final synthetic val$imageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

.field final synthetic val$modeName:Ljava/lang/String;

.field final synthetic val$previewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field final synthetic val$settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;[ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V
    .registers 8

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    iput-object p2, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$algos:[I

    iput-object p3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$imageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    iput-object p4, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$cameraId:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iput-object p6, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$previewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    iput-object p7, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$modeName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$algos:[I

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$msetAlgoPut(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;[I)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fputmHasTranssionFilterAlgo(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Z)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fputmHasMakeupAlgo(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Z)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$algos:[I

    array-length v2, v0

    :goto_15
    if-ge v1, v2, :cond_6a

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 127
    iget-object v5, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v5}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fgetmAlgos(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    if-eqz v5, :cond_67

    .line 129
    iget-object v6, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$imageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    iget-object v7, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$cameraId:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$settingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v9, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$previewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    iget-object v10, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->val$modeName:Ljava/lang/String;

    invoke-interface/range {v5 .. v10}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v4}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fgetmGpuProcessers(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    const/4 v6, 0x1

    if-ne v3, v4, :cond_4c

    .line 132
    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v3, v6}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fputmHasTranssionFilterAlgo(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Z)V

    goto :goto_56

    :cond_4c
    const/4 v4, 0x2

    if-eq v3, v4, :cond_51

    if-nez v3, :cond_56

    .line 134
    :cond_51
    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v3, v6}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fputmHasMakeupAlgo(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;Z)V

    .line 136
    :cond_56
    :goto_56
    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v3}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fgetmRecordCallback(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Lcom/transsion/camera/app/common/mode/IRecordCallback;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 137
    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v3}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->-$$Nest$fgetmRecordCallback(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Lcom/transsion/camera/app/common/mode/IRecordCallback;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_6a
    return-void
.end method
