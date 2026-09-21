.class public Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final StreetPhotoStyleValue:Ljava/lang/String;

.field public final filterIconId:I

.field public final filterNameId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;->filterIconId:I

    .line 9
    iput p2, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;->filterNameId:I

    .line 10
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;->StreetPhotoStyleValue:Ljava/lang/String;

    return-void
.end method
