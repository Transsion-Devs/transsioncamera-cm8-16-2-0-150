.class public Lcom/ss/android/ttvecamera/TECameraSettings$Operation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# static fields
.field public static final SLOW_MOTION_RECORD:I = 0x1

.field public static final UPDATE_CAMERA_ORIENTATION:I = 0x2


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraSettings$Operation;->mType:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 585
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$Operation;->mType:I

    return p0
.end method
