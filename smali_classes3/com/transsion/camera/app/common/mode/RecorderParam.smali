.class public Lcom/transsion/camera/app/common/mode/RecorderParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mOverrideSize:Landroid/util/Size;

.field public final mProfile:Landroid/media/CamcorderProfile;


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/media/CamcorderProfile;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/RecorderParam;->mOverrideSize:Landroid/util/Size;

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/RecorderParam;->mProfile:Landroid/media/CamcorderProfile;

    return-void
.end method
