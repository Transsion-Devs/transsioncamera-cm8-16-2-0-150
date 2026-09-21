.class public final synthetic Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/VEGetFrameSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/VEGetFrameSettings;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/ss/android/vesdk/VEGetFrameSettings;

    return-void
.end method


# virtual methods
.method public final getTimestamp(D)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-static {p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->$r8$lambda$VP63ZhwfUbg24kLKo6HW5zDNe4s(Lcom/ss/android/vesdk/VEGetFrameSettings;D)V

    return-void
.end method
