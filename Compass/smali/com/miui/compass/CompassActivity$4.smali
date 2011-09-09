.class Lcom/miui/compass/CompassActivity$4;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$4;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$4;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v0, p1}, Lcom/miui/compass/CompassActivity;->access$1300(Lcom/miui/compass/CompassActivity;Landroid/location/Location;)V

    .line 511
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 506
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 502
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 492
    if-eqz p2, :cond_0

    .line 493
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$4;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity$4;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v1}, Lcom/miui/compass/CompassActivity;->access$1200(Lcom/miui/compass/CompassActivity;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/compass/CompassActivity$4;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-static {v2}, Lcom/miui/compass/CompassActivity;->access$1100(Lcom/miui/compass/CompassActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/compass/CompassActivity;->access$1300(Lcom/miui/compass/CompassActivity;Landroid/location/Location;)V

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$4;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v0, v0, Lcom/miui/compass/CompassActivity;->mLocationTextView:Landroid/widget/TextView;

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
