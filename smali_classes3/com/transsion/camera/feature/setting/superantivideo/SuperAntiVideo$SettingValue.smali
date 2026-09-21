.class public Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingValue"
.end annotation


# instance fields
.field public currentValue:Ljava/lang/String;

.field public headerKey:Ljava/lang/String;

.field public supportValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)V
    .registers 2

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
