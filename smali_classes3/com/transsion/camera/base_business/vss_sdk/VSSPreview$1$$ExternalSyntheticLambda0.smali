.class public final synthetic Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;

.field public final synthetic f$1:[[I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;[[IIILcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;I)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;

    iput-object p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$1:[[I

    iput p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$4:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    iput p6, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;

    iget-object v1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$1:[[I

    iget v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$4:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    iget v5, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1$$ExternalSyntheticLambda0;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;->$r8$lambda$Jl1jCWH0eoMJFuB_6hSCExU2Pq0(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$1;[[IIILcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;I)V

    return-void
.end method
